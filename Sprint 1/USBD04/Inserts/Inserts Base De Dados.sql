INSERT INTO CustomerType(Id,Name) VALUES('1', 'Individual')
INSERT INTO CustomerType(Id,Name) VALUES('2', 'Company')


INSERT INTO Town(Id,Name) VALUES('1', 'Porto')
INSERT INTO Town(Id,Name) VALUES('2', 'São Mamede de Infesta')
INSERT INTO Town(Id,Name) VALUES('3', 'Vila Nova de Gaia')
INSERT INTO Town(Id,Name) VALUES('4', 'Nové Město')


INSERT INTO Country(Id,Name) VALUES('1', 'Portugal')
INSERT INTO Country(Id,Name) VALUES('2', 'Czechia')


INSERT INTO Address(Id,Street,ZIP,Town,Country) VALUES('1', 'Tv. Augusto Lessa 23', '4200-047', '1', '1')
INSERT INTO Address(Id,Street,ZIP,Town,Country) VALUES('2', 'R. Dr. Barros 93', '4465-219', '2', '1')
INSERT INTO Address(Id,Street,ZIP,Town,Country) VALUES('3', 'EDIFICIO CRISTAL lj18, R. António Correia de Carvalho 88', '4400-023', '3', '1')
INSERT INTO Address(Id,Street,ZIP,Town,Country) VALUES('4', 'Křemencova 11', '110 00', '4', '2')


INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,AddressId,Email,AddressId) VALUES('456', '2', 'Carvalho & Carvalho, Lda', 'PT501245987', 'NULL', 'NULL', '1')
INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,AddressId,Email,AddressId) VALUES('785', '2', 'Tudo para a casa, Lda', 'PT501245488', 'NULL', 'NULL', '2')
INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,AddressId,Email,AddressId) VALUES('657', '2', 'Sair de Cena', 'PT501242417', 'NULL', 'NULL', '3')
INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,AddressId,Email,AddressId) VALUES('348', '2', 'U Fleku', 'CZ6451237810', 'NULL', 'NULL', '4')


INSERT INTO ProductFamily(Id,Name) VALUES('1', 'Pot')
INSERT INTO ProductFamily(Id,Name) VALUES('2', 'Pan')
INSERT INTO ProductFamily(Id,Name) VALUES('3', 'Lid')


INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945T22', '1', 'La Belle 22 5l pot', '5l 22 cm aluminium and teflon non stick pot')
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S22', '1', 'Pro 22 5l pot', '5l 22 cm stainless steel pot')
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S20', '1', 'Pro 20 3l pot', '3l 20 cm stainless steel pot')
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S17', '2', 'Pro 17 2l sauce pan', '2l 17 cm stainless steel souce pan')
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945S48', '3', 'Pro 17 lid', '17 cm stainless steel lid')
INSERT INTO Product(Id,ProductFamilyId,Name,Description) VALUES('AS12945G48', '3', 'Pro Clear 17 lid', '17 cm glass lid')


INSERT INTO Component(PartNumber,Description) VALUES('PN12344A21', 'Screw M6 35 mm')
INSERT INTO Component(PartNumber,Description) VALUES('PN52384R50', '300x300 mm 5mm stainless steel sheet')
INSERT INTO Component(PartNumber,Description) VALUES('PN52384R10', '300x300 mm 1mm stainless steel sheet')
INSERT INTO Component(PartNumber,Description) VALUES('PN18544A21', 'Rivet 6 mm')
INSERT INTO Component(PartNumber,Description) VALUES('PN18544C21', 'Stainless steel handle model U6')
INSERT INTO Component(PartNumber,Description) VALUES('PN18324C54', 'Stainless steel handle model R12')
INSERT INTO Component(PartNumber,Description) VALUES('PN18324C51', 'Stainless steel handle model R11')


INSERT INTO Material(Id,Name) VALUES('1', 'aluminium')
INSERT INTO Material(Id,Name) VALUES('2', 'teflon')
INSERT INTO Material(Id,Name) VALUES('3', 'stainless steel')
INSERT INTO Material(Id,Name) VALUES('4', 'glass')


INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945T22', '1')
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945T22', '2')
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S22', '3')
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S20', '3')
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S17', '3')
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S48', '3')
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945G48', '4')


INSERT INTO Component_Material(ComponentNumber,MaterialId) VALUES('PN52384R50', '3')
INSERT INTO Component_Colour(ComponentNumber,MaterialId) VALUES('PN52384R10', '3')
INSERT INTO Component_Colour(ComponentNumber,MaterialId) VALUES('PN18544C21', '3')
INSERT INTO Component_Colour(ComponentNumber,MaterialId) VALUES('PN18324C54', '3')
INSERT INTO Component_Colour(ComponentNumber,MaterialId) VALUES('PN18324C51', '3')


INSERT INTO MesurementUnit(Id,Unit) VALUES('1', 'cm')
INSERT INTO MesurementUnit(Id,Unit) VALUES('2', 'l')
INSERT INTO MesurementUnit(Id,Unit) VALUES('3', 'mm')


INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('1', 'AS12945T22','5', '2','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('2', 'AS12945T22','22', '1','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('3', 'AS12945S22','5', '2','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('4', 'AS12945S22','22', '1','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('5', 'AS12945S20','3', '2','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('6', 'AS12945S20','20', '1','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('7', 'AS12945S17','2', '2','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('8', 'AS12945S17','17', '1','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('9', 'AS12945S48','17', '1','NULL')
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasuramentUnitId,Description) VALUES('10', 'AS12945G48','17', '1','NULL')


INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('1', 'PN12344A21','35', '3','M6')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('2', 'PN52384R50','300', '3','Width')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('3', 'PN52384R50','300', '3','Length')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('4', 'PN52384R50','5', '3','Depth')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('5', 'PN52384R10','300', '3','Width')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('6', 'PN52384R10','300', '3','Length')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('7', 'PN52384R10','1', '3','Depth')
INSERT INTO Component_Size(Id,ComponentNumber,SizeInt,MeasuramentUnitId,Description) VALUES('8', 'PN18544A21','6', '3','NULL')


INSERT INTO Operation(Id,Description) VALUES('5647', 'Disc cutting')
INSERT INTO Operation(Id,Description) VALUES('5649', 'Initial pot base pressing')
INSERT INTO Operation(Id,Description) VALUES('5651', 'Final pot base pressing')
INSERT INTO Operation(Id,Description) VALUES('5653', 'Pot base finishing')
INSERT INTO Operation(Id,Description) VALUES('5655', 'Lid pressing')
INSERT INTO Operation(Id,Description) VALUES('5657', 'Lid finishing')
INSERT INTO Operation(Id,Description) VALUES('5659', 'Pot handles riveting')
INSERT INTO Operation(Id,Description) VALUES('5661', 'Lid handle screw')
INSERT INTO Operation(Id,Description) VALUES('5663', 'Pot test and packaging')
INSERT INTO Operation(Id,Description) VALUES('5665', 'Handle welding')
INSERT INTO Operation(Id,Description) VALUES('5667', 'Lid polishing')
INSERT INTO Operation(Id,Description) VALUES('5669', 'Pot base polishing')
INSERT INTO Operation(Id,Description) VALUES('5671', 'Teflon painting')


INSERT INTO WorkstationType(Id,Name) VALUES('A4578', '600t cold forging stamping press')
INSERT INTO WorkstationType(Id,Name) VALUES('A4588', '600t cold forging precision stamping press')
INSERT INTO WorkstationType(Id,Name) VALUES('A4598', '1000t cold forging precision stamping press')
INSERT INTO WorkstationType(Id,Name) VALUES('S3271', 'Handle rivet')
INSERT INTO WorkstationType(Id,Name) VALUES('K3675', 'Packaging')
INSERT INTO WorkstationType(Id,Name) VALUES('K3676', 'Packaging for large itens')
INSERT INTO WorkstationType(Id,Name) VALUES('C5637', 'Border trimming')
INSERT INTO WorkstationType(Id,Name) VALUES('D9123', 'Spot welding')
INSERT INTO WorkstationType(Id,Name) VALUES('Q5478', 'Teflon application station')
INSERT INTO WorkstationType(Id,Name) VALUES('Q3547', 'Stainless steel polishing')
INSERT INTO WorkstationType(Id,Name) VALUES('T3452', 'Assembly T1')
INSERT INTO WorkstationType(Id,Name) VALUES('G9273', 'Circular glass cutting')
INSERT INTO WorkstationType(Id,Name) VALUES('G9274', 'Glass trimming')


INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5647', 'A4578')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5647', 'A4588')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5647', 'A4598')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5649', 'A4588')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5649', 'A4598')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5651', 'A4588')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5651', 'A4598')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5653', 'C5637')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5655', 'A4588')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5655', 'A4598')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5657', 'C5637')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5659', 'S3271')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5661', 'T3452')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5663', 'K3675')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5665', 'D9123')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5667', 'Q3547')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5669', 'Q3547')
INSERT INTO Operation_WorkstationType(OperationId,WorkstationTypeId) VALUES('5671', 'Q5478')


INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('1', '785', 'NULL', '45550', '45558')
INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('2', '657', 'NULL', '45550', '45560')
INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('3', '348', 'NULL', '45550', '45560')
INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('4', '785', 'NULL', '45553', '45560')
INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('5', '657', 'NULL', '45553', '45560')
INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('6', '348', 'NULL', '45553', '45561')
INSERT INTO CustomerOrder(Id,CustumerId,AddressId,DateOrder,DateDelivery) VALUES('7', '456', 'NULL', '45556', '45561')


INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('1', 'AS12945S22', '5')
INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('2', 'AS12945S22', '10')
INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('3', 'AS12945S22', '10')
INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('4', 'AS12945S22', '4')
INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('5', 'AS12945S22', '12')
INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('6', 'AS12945S22', '8')
INSERT INTO ProductionOrder(OrderId,ProductId,Quantity) VALUES('7', 'AS12945S22', '7')


INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S22', 'PN12344A21', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S22', 'PN52384R50', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S22', 'PN52384R10', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S22', 'PN18544A21', '4')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S22', 'PN18544C21', '2')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S22', 'PN18324C54', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S20', 'PN12344A21', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S20', 'PN52384R50', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S20', 'PN52384R10', '1')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S20', 'PN18544A21', '4')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S20', 'PN18544C21', '2')
INSERT INTO BOM(ProductId,ComponentNumber,Quantity) VALUES('AS12945S20', 'PN18324C51', '1')


INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5647', '1')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5647', '2')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5649', '3')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5651', '4')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5653', '5')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5659', '6')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5669', '7')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5655', '8')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5657', '9')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5661', '10')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5667', '11')
INSERT INTO BOO(ProductFamilyId,OperationId,Operation_SequenceNumber) VALUES('1', '5663', '12')