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


INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId,CustomerState) VALUES(456, 2, 'Carvalho & Carvalho, Lda', 'PT501245987', 003518340500, 'idont@care.com', 1, 0);
INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId,CustomerState) VALUES(785, 2, 'Tudo para a casa, Lda', 'PT501245488', 003518340500, 'me@neither.com', 2, 0);
INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId,CustomerState) VALUES(657, 2, 'Sair de Cena', 'PT501242417', 003518340500, 'some@email.com', 3, 0);
INSERT INTO Customer(Id,CustomerTypeId,Name,VATIN,PhoneNumber,Email,AddressId,CustomerState) VALUES(348, 2, 'U Fleku', 'CZ6451237810', 004201234567, 'some.random@email.cz', 4, 0);


INSERT INTO ProductFamily(Id,Name) VALUES(125, 'Pro Line pots');
INSERT INTO ProductFamily(Id,Name) VALUES(130, 'La Belle pots');
INSERT INTO ProductFamily(Id,Name) VALUES(132, 'Pro Line pans');
INSERT INTO ProductFamily(Id,Name) VALUES(145, 'Pro Line lids');
INSERT INTO ProductFamily(Id,Name) VALUES(146, 'Pro Clear lids');
INSERT INTO ProductFamily(Id,Name) VALUES(147, 'Pro Clear bottoms');


INSERT INTO Part(Id,Name) VALUES('AS12945T22','La Belle 22 5l pot');
INSERT INTO Part(Id,Name) VALUES('AS12945S22','Pro 22 5l pot');
INSERT INTO Part(Id,Name) VALUES('AS12945S20','Pro 20 3l pot');
INSERT INTO Part(Id,Name) VALUES('AS12945S17','Pro 17 2l pot');
INSERT INTO Part(Id,Name) VALUES('AS12945P17','Pro 17 2l sauce pan');
INSERT INTO Part(Id,Name) VALUES('AS12945S48','Pro 17 lid');
INSERT INTO Part(Id,Name) VALUES('AS12945G48','Pro Clear 17 lid');
INSERT INTO Part(Id,Name) VALUES('PN12344A21','Screw M6 35 mm');
INSERT INTO Part(Id,Name) VALUES('PN18544A21','Rivet 6 mm');
INSERT INTO Part(Id,Name) VALUES('PN18544C21','Stainless steel handle model U6');
INSERT INTO Part(Id,Name) VALUES('PN18324C54','Stainless steel handle model R12');
INSERT INTO Part(Id,Name) VALUES('PN18324C51','Stainless steel handle model R11');
INSERT INTO Part(Id,Name) VALUES('PN18324C91','Stainless steel handle model S26');
INSERT INTO Part(Id,Name) VALUES('PN52384R50','300x300 mm 5mm stainless steel sheet');
INSERT INTO Part(Id,Name) VALUES('PN52384R10','300x300 mm 1mm stainless steel sheet');
INSERT INTO Part(Id,Name) VALUES('PN52384R45','250x250 mm 5mm stainless steel sheet');
INSERT INTO Part(Id,Name) VALUES('PN52384R12','250x250 mm 1mm stainless steel sheet');
INSERT INTO Part(Id,Name) VALUES('AS12946S22','Pro 22 5l pot bottom');
INSERT INTO Part(Id,Name) VALUES('AS12947S22','Pro 22 lid');
INSERT INTO Part(Id,Name) VALUES('AS12946S20','Pro 20 3l pot bottom');
INSERT INTO Part(Id,Name) VALUES('AS12947S20','Pro 20 lid');
INSERT INTO Part(Id,Name) VALUES('IP12945A01','250 mm 5 mm stailess steel disc');
INSERT INTO Part(Id,Name) VALUES('IP12945A02','220 mm pot base phase 1');
INSERT INTO Part(Id,Name) VALUES('IP12945A03','220 mm pot base phase 2');
INSERT INTO Part(Id,Name) VALUES('IP12945A04','220 mm pot base final');
INSERT INTO Part(Id,Name) VALUES('IP12947A01','250 mm 1 mm stailess steel disc');
INSERT INTO Part(Id,Name) VALUES('IP12947A02','220 mm lid pressed');
INSERT INTO Part(Id,Name) VALUES('IP12947A03','220 mm lid polished');
INSERT INTO Part(Id,Name) VALUES('IP12947A04','220 mm lid with handle');
INSERT INTO Part(Id,Name) VALUES('IP12945A32','200 mm pot base phase 1');
INSERT INTO Part(Id,Name) VALUES('IP12945A33','200 mm pot base phase 2');
INSERT INTO Part(Id,Name) VALUES('IP12945A34','200 mm pot base final');
INSERT INTO Part(Id,Name) VALUES('IP12947A32','200 mm lid pressed');
INSERT INTO Part(Id,Name) VALUES('IP12947A33','200 mm lid polished');
INSERT INTO Part(Id,Name) VALUES('IP12947A34','200 mm lid with handle');
INSERT INTO Part(Id,Name) VALUES('PN94561L67','Coolube 2210XP');


INSERT INTO InternalPart(Id) VALUES('IP12945A01');
INSERT INTO InternalPart(Id) VALUES('IP12945A02');
INSERT INTO InternalPart(Id) VALUES('IP12945A03');
INSERT INTO InternalPart(Id) VALUES('IP12945A04');
INSERT INTO InternalPart(Id) VALUES('IP12947A01');
INSERT INTO InternalPart(Id) VALUES('IP12947A02');
INSERT INTO InternalPart(Id) VALUES('IP12947A03');
INSERT INTO InternalPart(Id) VALUES('IP12947A04');
INSERT INTO InternalPart(Id) VALUES('IP12945A32');
INSERT INTO InternalPart(Id) VALUES('IP12945A33');
INSERT INTO InternalPart(Id) VALUES('IP12945A34');
INSERT INTO InternalPart(Id) VALUES('IP12947A32');
INSERT INTO InternalPart(Id) VALUES('IP12947A33');
INSERT INTO InternalPart(Id) VALUES('IP12947A34');
INSERT INTO InternalPart(Id) VALUES('AS12945T22');
INSERT INTO InternalPart(Id) VALUES('AS12945S22');
INSERT INTO InternalPart(Id) VALUES('AS12945S20');
INSERT INTO InternalPart(Id) VALUES('AS12945S17');
INSERT INTO InternalPart(Id) VALUES('AS12945P17');
INSERT INTO InternalPart(Id) VALUES('AS12945S48');
INSERT INTO InternalPart(Id) VALUES('AS12945G48');
INSERT INTO InternalPart(Id) VALUES('AS12946S22');
INSERT INTO InternalPart(Id) VALUES('AS12947S22');
INSERT INTO InternalPart(Id) VALUES('AS12946S20');
INSERT INTO InternalPart(Id) VALUES('AS12947S20');


INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945T22', 130, '5l 22 cm aluminium and teflon non stick pot');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945S22', 125, '5l 22 cm stainless steel pot');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945S20', 125, '3l 20 cm stainless steel pot');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945S17', 125, '2l 17 cm stainless steel pot');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945P17', 132, '2l 17 cm stainless steel souce pan');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945S48', 145, '17 cm stainless steel lid');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12945G48', 146, '17 cm glass lid');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12946S22', 125, '5l 22 cm stainless steel pot bottom');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12947S22', 145, '22 cm stainless steel lid');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12946S20', 125, '3l 20 cm stainless steel pot bottom');
INSERT INTO Product(Id,ProductFamilyId,Description) VALUES('AS12947S20', 145, '20 cm stainless steel lid');


INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN12344A21', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN18544A21', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN18544C21', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN18324C54', 1, 350, 3);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN18324C51', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN18324C91', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN52384R50', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN52384R10', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN52384R45', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN52384R12', 1, 350, 0);
INSERT INTO ExternalPart(Id, MinimumStock, Stock, ReservedStock) VALUES('PN94561L67', 1, 350, 0);


INSERT INTO Component(Id) VALUES('PN12344A21');
INSERT INTO Component(Id) VALUES('PN18544A21');
INSERT INTO Component(Id) VALUES('PN18544C21');
INSERT INTO Component(Id) VALUES('PN18324C54');
INSERT INTO Component(Id) VALUES('PN18324C51');
INSERT INTO Component(Id) VALUES('PN18324C91');


INSERT INTO RawMaterial(Id) VALUES('PN52384R50');
INSERT INTO RawMaterial(Id) VALUES('PN52384R10');
INSERT INTO RawMaterial(Id) VALUES('PN52384R45');
INSERT INTO RawMaterial(Id) VALUES('PN52384R12');
INSERT INTO RawMaterial(Id) VALUES('PN94561L67');


INSERT INTO IntermediateProduct(Id) VALUES('IP12945A01');
INSERT INTO IntermediateProduct(Id) VALUES('IP12945A02');
INSERT INTO IntermediateProduct(Id) VALUES('IP12945A03');
INSERT INTO IntermediateProduct(Id) VALUES('IP12945A04');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A01');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A02');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A03');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A04');
INSERT INTO IntermediateProduct(Id) VALUES('IP12945A32');
INSERT INTO IntermediateProduct(Id) VALUES('IP12945A33');
INSERT INTO IntermediateProduct(Id) VALUES('IP12945A34');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A32');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A33');
INSERT INTO IntermediateProduct(Id) VALUES('IP12947A34');


INSERT INTO Material(Id,Name) VALUES(1, 'aluminium');
INSERT INTO Material(Id,Name) VALUES(2, 'teflon');
INSERT INTO Material(Id,Name) VALUES(3, 'stainless steel');
INSERT INTO Material(Id,Name) VALUES(4, 'glass');


INSERT INTO MeasurementUnit(Id,Unit) VALUES(1, 'cm');
INSERT INTO MeasurementUnit(Id,Unit) VALUES(2, 'l');
INSERT INTO MeasurementUnit(Id,Unit) VALUES(3, 'mm');
INSERT INTO MeasurementUnit(Id,Unit) VALUES(4, 'ml');
INSERT INTO MeasurementUnit(Id,Unit) VALUES(5, 'unit');


INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945T22', 1);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945T22', 2);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S22', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S20', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S17', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945S48', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945G48', 4);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12945P17', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12946S22', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12947S22', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12946S20', 3);
INSERT INTO Product_Material(ProductId,MaterialId) VALUES('AS12947S20', 3);


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
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(13, 'AS12946S22',5, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(14, 'AS12946S22',22, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(15, 'AS12947S22',22, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(16, 'AS12946S20',3, 2,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(17, 'AS12946S20',20, 1,'NULL');
INSERT INTO Product_Size(Id,ProductId,SizeInt,MeasurementUnitId,Description) VALUES(18, 'AS12947S20',20, 1,'NULL');


INSERT INTO BOO(Id,ProductId) VALUES('1', 'AS12946S22');
INSERT INTO BOO(Id,ProductId) VALUES('2', 'AS12947S22');
INSERT INTO BOO(Id,ProductId) VALUES('3', 'AS12945S22');
INSERT INTO BOO(Id,ProductId) VALUES('4', 'AS12946S20');
INSERT INTO BOO(Id,ProductId) VALUES('5', 'AS12947S20');
INSERT INTO BOO(Id,ProductId) VALUES('6', 'AS12945S20');


INSERT INTO OperationType(Id,Description) VALUES(5647, 'Disc cutting');
INSERT INTO OperationType(Id,Description) VALUES(5649, 'Initial pot base pressing');
INSERT INTO OperationType(Id,Description) VALUES(5651, 'Final pot base pressing');
INSERT INTO OperationType(Id,Description) VALUES(5653, 'Pot base finishing');
INSERT INTO OperationType(Id,Description) VALUES(5655, 'Lid pressing');
INSERT INTO OperationType(Id,Description) VALUES(5657, 'Lid finishing');
INSERT INTO OperationType(Id,Description) VALUES(5659, 'Pot handles riveting');
INSERT INTO OperationType(Id,Description) VALUES(5661, 'Lid handle screw');
INSERT INTO OperationType(Id,Description) VALUES(5663, 'Pot test and packaging');
INSERT INTO OperationType(Id,Description) VALUES(5665, 'Handle welding');
INSERT INTO OperationType(Id,Description) VALUES(5667, 'Lid polishing');
INSERT INTO OperationType(Id,Description) VALUES(5669, 'Pot base polishing');
INSERT INTO OperationType(Id,Description) VALUES(5671, 'Teflon painting');
INSERT INTO OperationType(Id,Description) VALUES(5681, 'Initial pan base pressing');
INSERT INTO OperationType(Id,Description) VALUES(5682, 'Final pan base pressing');
INSERT INTO OperationType(Id,Description) VALUES(5683, 'Pan base finishing');
INSERT INTO OperationType(Id,Description) VALUES(5685, 'Handle Gluing');
INSERT INTO OperationType(Id,Description) VALUES(5688, 'Pan test and packaging');


INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(170, 5663, '6', NULL, 3);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(164, 5667, '5', NULL, 2);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(154, 5659, '4', NULL, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(115, 5659, '1', NULL, 4);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(124, 5667, '2', NULL, 4);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(130, 5663, '3', NULL, 3);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(163, 5661, '5', 164, 3);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(153, 5653, '4', 154, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(123, 5661, '2', 124, 6);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(152, 5651, '4', 153, 3);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(122, 5657, '2', 123, 13);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(151, 5649, '4', 152, 12);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(150, 5647, '4', 151, 2);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(121, 5655, '2', 122, 3);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(120, 5647, '2', 121, 4);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(114, 5653, '1', 115, 4);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(112, 5651, '1', 114, 4);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(103, 5649, '1', 112, 12);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(100, 5647, '1', 103, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(162, 5657, '5', 163, 15);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(161, 5655, '5', 162, 2);
INSERT INTO Operation(Id,OperationTypeId,BOOId, NextOp,ExpectedTime) VALUES(160, 5647, '5', 161, 1);


INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'PN52384R50', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('103', 'IP12945A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('103', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('112', 'IP12945A02', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('112', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('114', 'IP12945A03', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('115', 'IP12945A04', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('115', 'PN18544A21', '4', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('115', 'PN18544C21', '2', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('120', 'PN52384R10', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('121', 'IP12947A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('121', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('122', 'IP12947A02', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('123', 'IP12947A03', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('123', 'PN18324C54', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('123', 'PN12344A21', '3', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('124', 'IP12947A04', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('130', 'AS12947S22', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('130', 'AS12946S22', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('150', 'PN52384R50', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('151', 'IP12945A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('151', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('152', 'IP12945A32', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('152', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('153', 'IP12945A33', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('154', 'IP12945A34', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('154', 'PN18544C21', '2', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('154', 'PN18544A21', '4', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('160', 'PN52384R10', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('161', 'IP12947A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('161', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('162', 'IP12947A32', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('163', 'IP12947A33', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('163', 'PN18324C51', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('163', 'PN12344A21', '3', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('164', 'IP12947A34', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('170', 'AS12946S20', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('170', 'AS12947S20', '1', '5');



INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'IP12945A01', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('103', 'IP12945A02', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('112', 'IP12945A03', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('114', 'IP12945A04', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('115', 'AS12946S22', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('120', 'IP12947A01', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('121', 'IP12947A02', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('122', 'IP12947A03', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('123', 'IP12947A04', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('124', 'AS12947S22', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('130', 'AS12945S22', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('150', 'IP12945A01', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('151', 'IP12945A32', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('152', 'IP12945A33', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('153', 'IP12945A34', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('154', 'AS12946S20', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('160', 'IP12947A01', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('161', 'IP12947A32', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('162', 'IP12947A33', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('163', 'IP12947A34', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('164', 'AS12947S20', '1', '5');
INSERT INTO OutputPart(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('170', 'AS12945S20', '1', '5');


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


INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(9875, 'A4578', 'Press 01', '220-630t cold forging press');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(9886, 'A4578', 'Press 02', '220-630t cold forging press');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(9847, 'A4588', 'Press 03', '220-630t precision cold forging press');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(9855, 'A4588', 'Press 04', '160-1000t precison cold forging press');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(8541, 'S3271', 'Rivet 02', 'Rivet station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(8543, 'S3271', 'Rivet 03', 'Rivet station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(6814, 'K3675', 'Packaging 01', 'Packaging station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(6815, 'K3675', 'Packaging 02', 'Packaging station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(6816, 'K3675', 'Packaging 03', 'Packaging station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(6821, 'K3675', 'Packaging 04', 'Packaging station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(6822, 'K3676', 'Packaging 05', 'Packaging station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(8167, 'D9123', 'Welding 01', 'Spot welding staion');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(8170, 'D9123', 'Welding 02', 'Spot welding staion');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(8171, 'D9123', 'Welding 03', 'Spot welding staion');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(7235, 'T3452', 'Assembly 01', 'Product assembly station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(7236, 'T3452', 'Assembly 02', 'Product assembly station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(7238, 'T3452', 'Assembly 03', 'Product assembly station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(5124, 'C5637', 'Trimming 01', 'Metal trimming station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(4123, 'Q3547', 'Polishing 01', 'Metal polishing station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(4124, 'Q3547', 'Polishing 02', 'Metal polishing station');
INSERT INTO Workstation(Id,WorkstationTypeId,Name,Description) VALUES(4125, 'Q3547', 'Polishing 03', 'Metal polishing station');


INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5647, 'A4578',1, 12);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5647, 'A4588',5, 14);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5647, 'A4598',3, 15);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5649, 'A4588',2, 16);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5649, 'A4598',5, 14);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5651, 'A4588',2, 18);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5651, 'A4598',4, 8);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5653, 'C5637',3, 19);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5655, 'A4588',1, 9);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5665, 'D9123',2, 8);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5657, 'C5637',2, 17);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5659, 'S3271',1, 5);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5661, 'T3452',2, 6);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5663, 'K3675',3, 5);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5667, 'Q3547',1, 5);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5669, 'Q3547',5, 7);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5671, 'Q5478',3, 8);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5681, 'A4588',1, 9);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5681, 'A4598',2, 17);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5682, 'A4588',2, 12);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5682, 'A4598',4, 14);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5683, 'C5637',2, 15);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5685, 'D9123',4, 16);
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId,SetupTime,MaximumTime) VALUES(5688, 'K3675',1, 21);


INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(1, 785, 2, TO_DATE('15/09/2024', 'dd/MM/YYYY'), TO_DATE('23/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(2, 657, 3, TO_DATE('15/09/2024', 'dd/MM/YYYY'), TO_DATE('26/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(3, 348, 4, TO_DATE('15/09/2024', 'dd/MM/YYYY'), TO_DATE('25/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(4, 785, 2, TO_DATE('18/09/2024', 'dd/MM/YYYY'), TO_DATE('25/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(5, 657, 3, TO_DATE('18/09/2024', 'dd/MM/YYYY'), TO_DATE('25/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(6, 348, 4, TO_DATE('18/09/2024', 'dd/MM/YYYY'), TO_DATE('26/09/2024', 'dd/MM/YYYY'));
INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES(7, 456, 1, TO_DATE('21/09/2024', 'dd/MM/YYYY'), TO_DATE('26/09/2024', 'dd/MM/YYYY'));


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
INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(7, 'AS12945S22', 8);


INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(1,1,'AS12945S22', 5, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(2,1,'AS12945S20', 15, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(3,2,'AS12945S22', 10, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(4,2,'AS12945P17', 20, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(5,3,'AS12945S22', 10, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(6,3,'AS12945S20', 10, TO_DATE('15/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(7,4,'AS12945S20', 24, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(8,4,'AS12945S22', 16, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(9,4,'AS12945S17', 8, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(10,5,'AS12945S22', 12, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(11,6,'AS12945S17', 8, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(12,6,'AS12945P17', 16, TO_DATE('18/09/2024', 'dd/MM/YYYY'));
INSERT INTO ProductionOrder(Id,CustomerOrderId,ProductId,Quantity,ProductionDate) VALUES(13,7,'AS12945S22', 8, TO_DATE('21/09/2024', 'dd/MM/YYYY'));


INSERT INTO Supplier(Id) VALUES(12345);
INSERT INTO Supplier(Id) VALUES(12298);


INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12345, 'PN18544C21', TO_DATE('01/10/2023', 'dd/MM/YYYY'), NULL, 20, 1.25);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12345, 'PN18324C54', TO_DATE('01/10/2023', 'dd/MM/YYYY'), TO_DATE('29/02/2024', 'dd/MM/YYYY'), 10, 1.7);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12345, 'PN18324C54', TO_DATE('01/04/2024', 'dd/MM/YYYY'), NULL, 16, 1.8);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12345, 'PN18324C51', TO_DATE('01/07/2023', 'dd/MM/YYYY'), TO_DATE('31/03/2024', 'dd/MM/YYYY'), 30, 1.9);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12345, 'PN18324C51', TO_DATE('01/04/2024', 'dd/MM/YYYY'), NULL, 20, 1.9);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12298, 'PN18544C21', TO_DATE('01/09/2023', 'dd/MM/YYYY'), NULL, 10, 1.35);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12298, 'PN18324C54', TO_DATE('01/08/2023', 'dd/MM/YYYY'), TO_DATE('29/01/2024', 'dd/MM/YYYY'), 10, 1.8);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12298, 'PN18324C54', TO_DATE('15/02/2024', 'dd/MM/YYYY'), NULL, 20, 1.75);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12298, 'PN18324C51', TO_DATE('01/08/2023', 'dd/MM/YYYY'), TO_DATE('31/05/2024', 'dd/MM/YYYY'), 40, 1.8);
INSERT INTO Procurement(SupplierId,ExternalPartId,StartDate,EndDate,MinQuantity,Price) VALUES(12298, 'PN12344A21', TO_DATE('01/07/2023', 'dd/MM/YYYY'), TO_DATE(NULL, 'dd/MM/YYYY'), 200, 0.65);
