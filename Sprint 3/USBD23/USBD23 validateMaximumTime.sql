CREATE OR REPLACE TRIGGER validateMaximumTime
    BEFORE INSERT OR UPDATE ON OperationType_WorkstationType
    FOR EACH ROW

    DECLARE expectedTimes SYS_CURSOR;
    ERROR EXCEPTION;

BEGIN
    OPEN expectedTimes FOR
    	SELECT operation.ExpectedTime
    	FROM Operation operation
    	WHERE operation.OperationTypeId = :new.OperationTypeId
    	AND :new.MaximumTime < operation.ExpectedTime;

    IF (expectedTimes%FOUND) THEN
        RAISE ERROR;
    END IF;

EXCEPTION
    WHEN ERROR THEN
        RAISE_APPLICATION_ERROR(-20002, 'Maximum Time was lower than the Expected Time of an Operation!');

END validateMaximumTime;