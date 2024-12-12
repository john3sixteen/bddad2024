CREATE OR REPLACE FUNCTION fncRegisterProduct(
    productId                 Product.Id%type,
    partName                  Part.Name%type,
    productDescription        Product.Description%type,
    productFamilyName         ProductFamily.Name%type,
    colourName                Colour.Name%type,
    materialName              Material.Name%type,
    productSizeInt            Product_Size.SizeInt%type,
    productSizeUnit           MeasurementUnit.Unit%type,
    productSizeDescription    Product_Size.Description%type DEFAULT NULL
) 
RETURN sys_refcursor IS
    rfStock          sys_refcursor;
    dummy            int;
    productFamilyId  int;
    colourId         int;
    materialId       int;
    measurementUnitId int;
    productSizeId    int;
BEGIN
    -- Part
    SELECT count(*) INTO dummy 
    FROM Part part
    WHERE part.Id = productId;

    IF dummy > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'There exists a Part with that Id already.');
    END IF;

    -- Part Name validation
    SELECT count(*) INTO dummy 
    FROM Part part
    WHERE part.Name = partName;

    IF dummy > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'There exists a Part with that Name already.');
    END IF;

    -- Insert Part
    INSERT INTO Part(Id, Name) VALUES(productId, partName);

    -- Product
    SELECT count(*) INTO dummy 
    FROM ProductFamily productFamily
    WHERE productFamily.Name = productFamilyName;

    IF dummy = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'No Product Family with that name was Found');
    END IF;

    SELECT Id INTO productFamilyId
    FROM ProductFamily
    WHERE Name = productFamilyName;

    -- Insert Product
    INSERT INTO Product(Id, ProductFamilyId, Description) 
    VALUES(productId, productFamilyId, productDescription);

    -- Colour
    IF colourName IS NOT NULL THEN
        SELECT count(*) INTO dummy 
        FROM Colour colour
        WHERE colour.Name = colourName;

        IF dummy = 0 THEN
            RAISE_APPLICATION_ERROR(-20004, 'No Colour with that name was Found');
        END IF;

        SELECT Id INTO colourId
        FROM Colour
        WHERE Name = colourName;

        -- Insert into Product_Colour
        INSERT INTO Product_Colour(ProductId, ColourId) 
        VALUES (productId, colourId);
    END IF;

    -- Material
    IF materialName IS NOT NULL THEN
        SELECT count(*) INTO dummy 
        FROM Material material
        WHERE material.Name = materialName;

        IF dummy = 0 THEN
            RAISE_APPLICATION_ERROR(-20005, 'No Material with that name was Found');
        END IF;

        SELECT Id INTO materialId
        FROM Material
        WHERE Name = materialName;

        -- Insert into Product_Material
        INSERT INTO Product_Material(ProductId, MaterialId) 
        VALUES(productId, materialId);
    END IF;

    -- Product Size
    IF productSizeInt <= 0 THEN
        RAISE_APPLICATION_ERROR(-20006, 'Product Size should be a positive number.');
    END IF;

    -- MeasurementUnit
    SELECT count(*) INTO dummy 
    FROM MeasurementUnit measurementUnit
    WHERE measurementUnit.Unit = productSizeUnit;

    IF dummy = 0 THEN
        RAISE_APPLICATION_ERROR(-20007, 'No Measurement Unit with that name was Found');
    END IF;

    SELECT Id INTO measurementUnitId
    FROM MeasurementUnit
    WHERE Unit = productSizeUnit;

    -- Get next ProductSizeId
    SELECT MAX(Id) + 1 INTO productSizeId
    FROM Product_Size;

    -- Insert into Product_Size
    INSERT INTO Product_Size(Id, ProductId, SizeInt, MeasurementUnitId, Description) 
    VALUES(productSizeId, productId, productSizeInt, measurementUnitId, productSizeDescription);

    -- Open the cursor to return the created ProductId
    OPEN rfStock FOR
        SELECT Id 
        FROM Product
        WHERE Id = productId;

    RETURN rfStock;

EXCEPTION
    WHEN OTHERS THEN
        RAISE;
END;
