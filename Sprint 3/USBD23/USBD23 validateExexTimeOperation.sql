CREATE OR REPLACE TRIGGER validateExecTimeOperation
    BEFORE INSERT OR UPDATE ON Operation
    FOR EACH ROW

    DECLARE maximumTimes SYS_REFCURSOR;
    ERROR EXCEPTION;

BEGIN
    OPEN maximumTimes FOR
        SELECT OperationType_WorkstationType.MaximumTime
            FROM OperationType_WorkstationType
            WHERE OperationType_WorkstationType.OperationTypeId = :new.OperationTypeId 
            AND OperationType_WorkstationType.MaximumTime < :new.ExpectedTime;

    IF (maximumTimes%FOUND) THEN
        RAISE ERROR;
    END IF;

EXCEPTION
    WHEN ERROR THEN
        RAISE_APPLICATION_ERROR(-20001, 'Expected Time exceeded Maximum Time of a Workstation Type!');

END validateExecTime;