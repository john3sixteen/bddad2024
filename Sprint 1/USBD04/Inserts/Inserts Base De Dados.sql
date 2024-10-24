INSERT INTO CustomerType(Id,Name) VALUES(1, 'Individual');
INSERT INTO CustomerType(Id,Name) VALUES(2, 'Company');


INSERT INTO Town(Id,Name) VALUES(1, 'Porto');
INSERT INTO Town(Id,Name) VALUES(2, 'São Mamede de Infesta');
INSERT INTO Town(Id,Name) VALUES(3, 'Vila Nova de Gaia');
INSERT INTO Town(Id,Name) VALUES(4, 'Nové Město');


INSERT INTO Country(Id,Name) VALUES(1, 'Portugal');
INSERT INTO Country(Id,Name) VALUES(2, 'Czechia');


INSERT INTO Address(Id,Street,ZipCode,TownId,CountryId) VALUES(1, 'Tv. Augusto Lessa 23', '4200-047', '1', '1');
INSERT INTO Address(Id,Street,ZipCode,TownId,CountryId) VALUES(2, 'R. Dr. Barros 93', '4465-219', '2', '1');
INSERT INTO Address(Id,Street,ZipCode,TownId,CountryId) VALUES(3, 'EDIFICIO CRISTAL lj18, R. António Correia de Carvalho 88', '4400-023', '3', '1');
INSERT INTO Address(Id,Street,ZipCode,TownId,CountryId) VALUES(4, 'Křemencova 11', '110 00', '4', '2');


INSERT INTO Entity(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId) VALUES(456, 2, 'Carvalho & Carvalho, Lda', 'PT501245987', 003518340500, 'idont@care.com', 1);
INSERT INTO Entity(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId) VALUES(785, 2, 'Tudo para a casa, Lda', 'PT501245488', 003518340500, 'me@neither.com', 2);
INSERT INTO Entity(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId) VALUES(657, 2, 'Sair de Cena', 'PT501242417', 003518340500, 'some@email.com', 3);
INSERT INTO Entity(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId) VALUES(348, 2, 'U Fleku', 'CZ6451237810', 004201234567, 'some.random@email.cz', 4);


INSERT INTO ProductFamily(Id,Name) VALUES(125, 'Pro Line pots');
INSERT INTO ProductFamily(Id,Name) VALUES(130, 'La Belle pots');
INSERT INTO ProductFamily(Id,Name) VALUES(132, 'Pro Line pans');
INSERT INTO ProductFamily(Id,Name) VALUES(145, 'Pro Line lids');
INSERT INTO ProductFamily(Id,Name) VALUES(146, 'Pro Clear lids');


INSERT INTO Part(Id) VALUES('AS12945T22');
INSERT INTO Part(Id) VALUES('AS12945S22');
INSERT INTO Part(Id) VALUES('AS12945S20');
INSERT INTO Part(Id) VALUES('AS12945S17');
INSERT INTO Part(Id) VALUES('AS12945P17');
INSERT INTO Part(Id) VALUES('AS12945S48');
INSERT INTO Part(Id) VALUES('AS12945G48');
INSERT INTO Part(Id) VALUES('PN12344A21');
INSERT INTO Part(Id) VALUES('PN52384R50');
INSERT INTO Part(Id) VALUES('PN52384R10');
INSERT INTO Part(Id) VALUES('PN18544A21');
INSERT INTO Part(Id) VALUES('PN18544C21');
INSERT INTO Part(Id) VALUES('PN18324C54');
INSERT INTO Part(Id) VALUES('PN18324C51');
INSERT INTO Part(Id) VALUES('PN52384R45');
INSERT INTO Part(Id) VALUES('PN52384R12');
INSERT INTO Part(Id) VALUES('PN18324C91');


INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945T22', 130, 'La Belle 22 5l pot', '5l 22 cm aluminium and teflon non stick pot');
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S22', 125, 'Pro 22 5l pot', '5l 22 cm stainless steel pot');
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S20', 125, 'Pro 20 3l pot', '3l 20 cm stainless steel pot');
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S17', 125, 'Pro 17 2l pot', '2l 17 cm stainless steel pot');
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945P17', 132, 'Pro 17 2l sauce pan', '2l 17 cm stainless steel souce pan');
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S48', 145, 'Pro 17 lid', '17 cm stainless steel lid');
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945G48', 146, 'Pro Clear 17 lid', '17 cm glass lid');


INSERT INTO Component(Id,Name) VALUES('PN12344A21', 'Screw M6 35 mm');
INSERT INTO Component(Id,Name) VALUES('PN18544A21', 'Rivet 6 mm');
INSERT INTO Component(Id,Name) VALUES('PN18544C21', 'Stainless steel handle model U6');
INSERT INTO Component(Id,Name) VALUES('PN18324C54', 'Stainless steel handle model R12');
INSERT INTO Component(Id,Name) VALUES('PN18324C51', 'Stainless steel handle model R11');
INSERT INTO Component(Id,Name) VALUES('PN18324C91', 'Stainless steel handle model S26');


INSERT INTO RawMaterial(Id,Name) VALUES('PN52384R50', '300x300 mm 5mm stainless steel sheet');
INSERT INTO RawMaterial(Id,Name) VALUES('PN52384R10', '300x300 mm 1mm stainless steel sheet');
INSERT INTO RawMaterial(Id,Name) VALUES('PN52384R45', '250x250 mm 5mm stainless steel sheet');
INSERT INTO RawMaterial(Id,Name) VALUES('PN52384R12', '250x250 mm 1mm stainless steel sheet');


INSERT INTO Material(Id,Name) VALUES(1, 'aluminium');
INSERT INTO Material(Id,Name) VALUES(2, 'teflon');
INSERT INTO Material(Id,Name) VALUES(3, 'stainless steel');
INSERT INTO Material(Id,Name) VALUES(4, 'glass');


INSERT INTO MeasurementUnit(Id,Unit) VALUES(1, 'cm');
INSERT INTO MeasurementUnit(Id,Unit) VALUES(2, 'l');
INSERT INTO MeasurementUnit(Id,Unit) VALUES(3, 'mm');


INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945T22', 1);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945T22', 2);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S22', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S20', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S17', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S48', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945G48', 4);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945P17', 3);


INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(1, 'AS12945T22',5, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(2, 'AS12945T22',22, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(3, 'AS12945S22',5, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(4, 'AS12945S22',22, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(5, 'AS12945S20',3, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(6, 'AS12945S20',20, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(7, 'AS12945S17',2, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(8, 'AS12945S17',17, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(9, 'AS12945S48',17, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(10, 'AS12945G48',17, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(11, 'AS12945P17',2, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(12, 'AS12945P17',17, 1,'NULL');


INSERT INTO Operation(Id,Description) VALUES(5647, 'Disc cutting');
INSERT INTO Operation(Id,Description) VALUES(5649, 'Initial pot base pressing');
INSERT INTO Operation(Id,Description) VALUES(5651, 'Final pot base pressing');
INSERT INTO Operation(Id,Description) VALUES(5653, 'Pot base finishing');
INSERT INTO Operation(Id,Description) VALUES(5655, 'Lid pressing');
INSERT INTO Operation(Id,Description) VALUES(5657, 'Lid finishing');
INSERT INTO Operation(Id,Description) VALUES(5659, 'Pot handles riveting');
INSERT INTO Operation(Id,Description) VALUES(5661, 'Lid handle screw');
INSERT INTO Operation(Id,Description) VALUES(5663, 'Pot test and packaging');
INSERT INTO Operation(Id,Description) VALUES(5665, 'Handle welding');
INSERT INTO Operation(Id,Description) VALUES(5667, 'Lid polishing');
INSERT INTO Operation(Id,Description) VALUES(5669, 'Pot base polishing');
INSERT INTO Operation(Id,Description) VALUES(5671, 'Teflon painting');
INSERT INTO Operation(Id,Description) VALUES(5681, 'Initial pan base pressing');
INSERT INTO Operation(Id,Description) VALUES(5682, 'Final pan base pressing');
INSERT INTO Operation(Id,Description) VALUES(5683, 'Pan base finishing');
INSERT INTO Operation(Id,Description) VALUES(5688, 'Pan test and packaging');


INSERT INTO WorkstationType(Id,Name) VALUES('A4578', '600t cold forging stamping press');
INSERT INTO WorkstationType(Id,Name) VALUES('A4588', '600t cold forging precision stamping press');
INSERT INTO WorkstationType(Id,Name) VALUES('A4598', '1000t cold forging precision stamping press');
INSERT INTO WorkstationType(Id,Name) VALUES('S3271', 'Handle rivet');
INSERT INTO WorkstationType(Id,Name) VALUES('K3675', 'Packaging');
INSERT INTO WorkstationType(Id,Name) VALUES('K3676', 'Packaging for large itens');
INSERT INTO WorkstationType(Id,Name) VALUES('C5637', 'Border trimming');
INSERT INTO WorkstationType(Id,Name) VALUES('D9123', 'Spot welding');
INSERT INTO WorkstationType(Id,Name) VALUES('Q5478', 'Teflon application station');
INSERT INTO WorkstationType(Id,Name) VALUES('Q3547', 'Stainless steel polishing');
INSERT INTO WorkstationType(Id,Name) VALUES('T3452', 'Assembly T1');
INSERT INTO WorkstationType(Id,Name) VALUES('G9273', 'Circular glass cutting');
INSERT INTO WorkstationType(Id,Name) VALUES('G9274', 'Glass trimming');


INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5647, 'A4578');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5647, 'A4588');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5647, 'A4598');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5649, 'A4588');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5649, 'A4598');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5651, 'A4588');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5651, 'A4598');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5653, 'C5637');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5655, 'A4588');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5665, 'D9123');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5655, 'A4598');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5657, 'C5637');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5659, 'S3271');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5661, 'T3452');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5663, 'K3675');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5667, 'Q3547');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5669, 'Q3547');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5671, 'Q5478');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5681, 'A4588');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5681, 'A4598');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5682, 'A4588');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5682, 'A4598');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5683, 'C5637');
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES(5688, 'K3675');


INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(1, 785, NULL, TO_DATE('15/09/2024', 'dd/MM/YYYY'), TO_DATE('23/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(2, 657, NULL, TO_DATE('15/09/2024', 'dd/MM/YYYY'), TO_DATE('26/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(3, 348, NULL, TO_DATE('15/09/2024', 'dd/MM/YYYY'), TO_DATE('25/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(4, 785, NULL, TO_DATE('18/09/2024', 'dd/MM/YYYY'), TO_DATE('25/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(5, 657, NULL, TO_DATE('18/09/2024', 'dd/MM/YYYY'), TO_DATE('25/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(6, 348, NULL, TO_DATE('18/09/2024', 'dd/MM/YYYY'), TO_DATE('26/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(7, 456, NULL, TO_DATE('21/09/2024', 'dd/MM/YYYY'), TO_DATE('26/09/2024', 'dd/MM/YYYY'));


INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(1, 'AS12945S22', 5);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(1, 'AS12945S20', 15);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(2, 'AS12945S22', 10);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(2, 'AS12945P17', 20);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(3, 'AS12945S22', 10);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(3, 'AS12945S20', 10);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(4, 'AS12945S20', 24);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(4, 'AS12945S22', 16);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(4, 'AS12945S17', 8);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(5, 'AS12945S22', 12);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(6, 'AS12945S17', 8);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(6, 'AS12945P17', 16);
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(7, 'AS12945S22', 8);~


INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(1,1, AS12945S22, 5, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(2,1, AS12945S20, 15, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(3,2, AS12945S22, 10, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(4,2, AS12945P17, 20, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(5,3, AS12945S22, 10, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(6,3, AS12945S20, 10, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(7,4, AS12945S20, 24, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(8,4, AS12945S22, 16, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(9,4, AS12945S17, 8, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(10,5, AS12945S22, 12, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(11,6, AS12945S17, 8, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(12,6, AS12945P17, 16, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,Date) VALUES(13,7, AS12945S22, 8, TO_DATE('21/09/2024', 'dd/MM/YYYY'));


INSERT INTO BOM(Id,ProductId,Version) VALUES(1,'AS12945S22', 1);
INSERT INTO BOM(Id,ProductId,Version) VALUES(2,'AS12945S20', 1);
INSERT INTO BOM(Id,ProductId,Version) VALUES(3,'AS12945S17', 1);
INSERT INTO BOM(Id,ProductId,Version) VALUES(4,'AS12945P17', 1);


INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(1, 'PN12344A21', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(1, 'PN52384R50', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(1, 'PN52384R10', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(1, 'PN18544A21', 4);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(1, 'PN18544C21', 2);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(1, 'PN18324C54', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(2, 'PN12344A21', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(2, 'PN52384R50', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(2, 'PN52384R10', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(2, 'PN18544A21', 4);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(2, 'PN18544C21', 2);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(2, 'PN18324C51', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(3, 'PN12344A21', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(3, 'PN52384R45', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(3, 'PN52384R12', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(3, 'PN18544A21', 4);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(3, 'PN18544C21', 2);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(3, 'PN18324C51', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(4, 'PN52384R45', 1);
INSERT INTO PartBOM(BOMId,PartId,Quantity) VALUES(4, 'PN18324C91', 1);


INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5647,1);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5647,2);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5649,3);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5651,4);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5653,5);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5659,6);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5669,7);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5655,8);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5657,9);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5661,10);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5667,11);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(125, 5663,12);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(132, 5681,1);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(132, 5682,2);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(132, 5683,3);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(132, 5665,4);
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES(132, 5688,5);