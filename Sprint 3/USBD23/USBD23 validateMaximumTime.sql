CREATE OR REPLACE TRIGGER validateMaximumTime
    BEFORE INSERT OR UPDATE ON OperationType_WorkstationType
    FOR EACH ROW

    DECLARE expectedTimes NUMBER;
    ERROR EXCEPTION;

BEGIN
    SELECT COUNT(*) INTO expectedTimes
    	FROM Operation operation
    	WHERE operation.OperationTypeId = :new.OperationTypeId
    	AND :new.MaximumTime < operation.ExpectedTime;

    IF (expectedTimes > 0) THEN
        RAISE ERROR;
    END IF;

EXCEPTION
    WHEN ERROR THEN
        RAISE_APPLICATION_ERROR(-20002, 'Maximum Time was lower than the Expected Time of an Operation!');

END validateMaximumTime;
