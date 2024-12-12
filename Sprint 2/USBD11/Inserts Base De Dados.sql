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


INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(170, 5663, '6', 'AS12945S20', NULL, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(164, 5667, '5', 'AS12947S20', NULL, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(154, 5659, '4', 'AS12946S20', NULL, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(115, 5659, '1', 'AS12946S22', NULL, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(124, 5667, '2', 'AS12947S22', NULL, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(130, 5663, '3', 'AS12945S22', NULL, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(163, 5661, '5', 'IP12947A34', 164, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(153, 5653, '4', 'IP12945A34', 154, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(123, 5661, '2', 'IP12947A04', 124, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(152, 5651, '4', 'IP12945A33', 153, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(122, 5657, '2', 'IP12947A03', 123, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(151, 5649, '4', 'IP12945A32', 152, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(150, 5647, '4', 'IP12945A01', 151, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(121, 5655, '2', 'IP12947A02', 122, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(120, 5647, '2', 'IP12947A01', 121, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(114, 5653, '1', 'IP12945A04', 115, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(112, 5651, '1', 'IP12945A03', 114, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(103, 5649, '1', 'IP12945A02', 112, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(100, 5647, '1', 'IP12945A01', 103, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(162, 5657, '5', 'IP12947A33', 163, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(161, 5655, '5', 'IP12947A32', 162, 1, 5);
INSERT INTO Operation(Id,OperationTypeId,BOOId,PartOutput,NextOp,OutputQuantity,OutputMeasurementUnitId) VALUES(160, 5647, '5', 'IP12947A01', 161, 1, 5);


INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('100', 'PN52384R50', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('103', 'IP12945A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('103', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('112', 'IP12945A02', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('112', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('114', 'IP12945A03', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('115', 'IP12945A04', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('115', 'PN18544C21', '2', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('120', 'PN52384R10', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('121', 'IP12947A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('121', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('122', 'IP12947A02', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('123', 'IP12947A03', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('123', 'PN18324C54', '1', '5');
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
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('160', 'PN52384R10', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('161', 'IP12947A01', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('161', 'PN94561L67', '5', '4');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('162', 'IP12947A32', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('163', 'IP12947A33', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('163', 'PN18324C51', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('164', 'IP12947A34', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('170', 'AS12946S20', '1', '5');
INSERT INTO OperationInput(OperationId,PartId,Quantity,MeasurementUnitId) VALUES('170', 'AS12947S20', '1', '5');


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


INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5647, 'A4578');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5647, 'A4588');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5647, 'A4598');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5649, 'A4588');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5649, 'A4598');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5651, 'A4588');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5651, 'A4598');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5653, 'C5637');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5655, 'A4588');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5665, 'D9123');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5655, 'A4598');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5657, 'C5637');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5659, 'S3271');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5661, 'T3452');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5663, 'K3675');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5667, 'Q3547');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5669, 'Q3547');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5671, 'Q5478');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5681, 'A4588');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5681, 'A4598');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5682, 'A4588');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5682, 'A4598');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5683, 'C5637');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5685, 'D9123');
INSERT INTO OperationType_WorkstationType(OperationTypeId,WorkstationTypeId) VALUES(5688, 'K3675');


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
