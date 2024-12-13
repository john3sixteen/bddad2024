--1st test - The Operation expected time is bigger than one of its OperationType_WorkstationType
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(101, 5647, '1', 103, 13);
--2nd test - The Operation expected time is lower than all its OperationType_WorkstationType
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(102, 5647, '1', 103, 12);
--3rd test - The Operation expected time is the same size as one of its OperationType_WorkstationType
UPDATE Operation
SET ExpectedTime = 13
WHERE Id = 102
--4th test - he Operation expected time is bigger than one of its OperationType_WorkstationType
UPDATE Operation
SET ExpectedTime = 16
WHERE Id = 102
