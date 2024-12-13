CREATE OR REPLACE TRIGGER validateBOO
    BEFORE UPDATE ON BOO
    FOR EACH ROW

    DECLARE InputProducts NUMBER;
	BOOProduct NUMBER;
    ERROR EXCEPTION;
	BOOERROR EXCEPTION;

BEGIN
    SELECT COUNT(*) INTO BOOProduct
    	FROM Product
    	WHERE Id LIKE :new.ProductId;

	IF (BOOProduct = 0) THEN
        RAISE BOOERROR;
	END IF;

    SELECT count(*) INTO InputProducts
        FROM Operation
        INNER JOIN OperationInput ON Operation.Id = OperationInput.OperationId
        WHERE Operation.BOOId = :new.Id 
        AND OperationInput.PartId = :new.ProductId;

    IF (InputProducts > 0) THEN
        RAISE ERROR;
    END IF;

EXCEPTION
    WHEN ERROR THEN
        RAISE_APPLICATION_ERROR(-20004, 'The BOO final product cannot be an input in one of its operations!');
	WHEN BOOERROR THEN
        RAISE_APPLICATION_ERROR(-20005, 'The BOO final product has to be a product registered in the database!');

END validateBOO;