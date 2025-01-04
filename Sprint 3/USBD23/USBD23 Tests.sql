--1st test - The Operation expected time is bigger than one of its OperationType_WorkstationType - Should give an error
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(101, 5647, '1', 103, 13);
--2nd test - The Operation expected time is lower than all its OperationType_WorkstationType - Should be successful
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(102, 5647, '1', 103, 11);
--3rd test - The Operation expected time is the same time as the OperationType_WorkstationType of the operation with the least expected time - Should be successful
UPDATE Operation
SET ExpectedTime = 12
WHERE Id = 102;
--4th test - The Operation expected time is bigger than one of its OperationType_WorkstationType - Should give an error
UPDATE Operation
SET ExpectedTime = 14
WHERE Id = 102;
--5th test - The OperationType_WorkstationType Maximum time is bigger than the expected time of all its operations - Should be successful
UPDATE OperationType_WorkstationType
SET MaximumTime = 16
WHERE OperationTypeId = 5657
AND WorkstationTypeId = 'C5637';
--6th test - The OperationType_WorkstationType Maximum time is lower than the expected time of one its operations - Should give an error
UPDATE OperationType_WorkstationType
SET MaximumTime = 10
WHERE OperationTypeId = 5657
AND WorkstationTypeId = 'C5637';
--Deletes
DELETE FROM Operation WHERE Id = 102;