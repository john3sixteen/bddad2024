CREATE OR REPLACE TRIGGER validateUSBD28
    BEFORE INSERT OR UPDATE ON OperationInput
    FOR EACH ROW

    DECLARE 
        BOOproduct VARCHAR2(255);
        ProductExists NUMBER;
        DuplicateCount NUMBER;
        ERROR_CIRCULAR EXCEPTION;
        ERROR_DUPLICATE EXCEPTION;
        ERROR_PRODUCT_NOT_FOUND EXCEPTION;

BEGIN
    -- 1. Obter o produto final da BOO associado à operação
    SELECT BOO.ProductId INTO BOOproduct
    FROM Operation
    INNER JOIN BOO ON Operation.BOOId = BOO.Id
    WHERE Operation.Id = :new.OperationId;

    -- 2. Verificar se o produto final é igual ao PartId (input)
    IF (BOOproduct = :new.PartId) THEN
        RAISE ERROR_CIRCULAR;
    END IF;

    -- 3. Validar se o PartId existe na tabela Product
    SELECT COUNT(*) INTO ProductExists
    FROM Product
    WHERE Id = :new.PartId;

    IF (ProductExists = 0) THEN
        RAISE ERROR_PRODUCT_NOT_FOUND;
    END IF;

    -- 4. Garantir que não há duplicados de PartId na mesma operação
    SELECT COUNT(*) INTO DuplicateCount
    FROM OperationInput
    WHERE OperationId = :new.OperationId
      AND PartId = :new.PartId
      AND ROWID != :new.ROWID;

    IF (DuplicateCount > 0) THEN
        RAISE ERROR_DUPLICATE;
    END IF;

EXCEPTION
    WHEN ERROR_CIRCULAR THEN
        RAISE_APPLICATION_ERROR(-20007, 'A Product cannot be an input on its own BOO!');
    WHEN ERROR_PRODUCT_NOT_FOUND THEN
        RAISE_APPLICATION_ERROR(-20008, 'The input Product does not exist in the Product table!');
    WHEN ERROR_DUPLICATE THEN
        RAISE_APPLICATION_ERROR(-20009, 'Duplicate input Products are not allowed for the same Operation!');
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20010, 'BOO or Operation not found!');

END validateUSBD28;