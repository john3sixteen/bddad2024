DECLARE
    rfc SYS_REFCURSOR;
    ProductId Product.Id%type;
BEGIN
    BEGIN
        -- Call the function
        rfc := fncRegisterProduct(
            'US15545T25',  -- productId
            'DANDERYD',    -- partName
            'Dining table',-- productDescription
            'Pro Line lids',-- productFamilyName
            NULL,           -- colourName
            'aluminium',    -- materialName
            100,            -- productSizeInt
            'cm'            -- productSizeUnit
        );

        -- Process the cursor
        LOOP
            FETCH rfc INTO ProductId;
            EXIT WHEN rfc%NOTFOUND;
            dbms_output.put_line('Product created with the following Id: ' || ProductId);
        END LOOP;

        IF rfc%ROWCOUNT = 0 THEN
            dbms_output.put_line('Product not created');
        END IF;

        -- Commit the transaction
        COMMIT;

    EXCEPTION
        WHEN OTHERS THEN
            -- If there's any error, rollback
            ROLLBACK;
            dbms_output.put_line('Error occurred: ' || SQLERRM);
    END;
END;
