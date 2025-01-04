--1st Test AS12946S22 is the final product of the BOO that has the operation with Id 100 - Should give an error;
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'AS12946S22', '1', '5');
--2nd Test AS12947S22 is the final product of a different BOO - Should be successful;
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'AS12947S22', '1', '5');
--3rd Test Change the BOO final product to a different product that is not an input of one of its operations - Should be successful;
UPDATE BOO
    SET ProductId = 'AS12945S20'
    WHERE Id = '1';
--4th Test The final product is a input on one of the operations so we get and error;
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'AS12946S22', '1', '5');
UPDATE BOO
    SET ProductId = 'AS12946S22'
    WHERE Id = '1';
--5th Test PN12344A21 is not a product;
UPDATE BOO
    SET ProductId = 'PN12344A21'
    WHERE Id = '1';
--Delete and update actions to restore the data
DELETE FROM OperationInput
WHERE OperationId = '100'
AND PartId = 'AS12946S22'
AND Quantity = '1'
AND MeasurementUnitId = '5';

DELETE FROM OperationInput
WHERE OperationId = '100'
AND PartId = 'AS12947S22'
AND Quantity = '1'
AND MeasurementUnitId = '5';

UPDATE BOO
SET ProductId = 'AS12946S22'
WHERE Id = '1';