--1st Test AS12946S22 is the final product of the BOO that has the operation with Id 100;
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'AS12946S22', '1', '5');
--2nd Test AS12947S22 is the final product of a different BOO;
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'AS12947S22', '1', '5');
--3rd Test Change the BOO final product to a different product that is not an input of one of its operations;
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