DECLARE 
    myCursor           SYS_REFCURSOR;
    products           SYS_REFCURSOR;
    productId          Product.Id%type;    -- Variable to hold product ID
    productName        Part.Name%type;     -- Variable to hold the part name

BEGIN
    -- Open the products cursor to fetch products that are in the BOO table
    OPEN products FOR
        SELECT product.id
        FROM Product product
        LEFT OUTER JOIN BOO boo ON product.Id = boo.productId
        WHERE boo.productId IS NOT NULL;

    -- Loop through each product
    LOOP
        FETCH products INTO productId;          -- Fetch the product ID
        EXIT WHEN products%NOTFOUND;           -- Exit the loop if no more products

        -- Call the function to get products with all workstation types
        myCursor := fncGetProductWithAllWorkstationTypesList(productId);

        -- Loop through each result in myCursor
        LOOP
            FETCH myCursor INTO productName;   -- Fetch the part name from the cursor
            EXIT WHEN myCursor%NOTFOUND;        -- Exit the loop if no more rows

            -- Print the product that uses all types of workstations
            dbms_output.put_line('Product '|| productName || ' uses all types of workstations.');
        END LOOP;
    END LOOP;

   	IF products%ROWCOUNT = 0 THEN
        dbms_output.put_line('No Products with BOO.');
    END IF;

    -- Close the cursor
    CLOSE myCursor;
    CLOSE products;

END;
