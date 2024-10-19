CREATE TABLE Address (
  Id        number(10), 
  Street    varchar2(255) NOT NULL, 
  ZipCode   varchar2(15) NOT NULL, 
  TownId    number(10) NOT NULL, 
  CountryId number(10) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE BOM (
  ProductId       varchar2(100) NOT NULL, 
  ComponentNumber varchar2(100) NOT NULL, 
  Quantity        number(10) NOT NULL, 
  PRIMARY KEY (ProductId, 
  ComponentNumber));
CREATE TABLE BOO (
  ProductFamilyId          number(10) NOT NULL, 
  OperationId              number(10) NOT NULL, 
  Operation_SequenceNumber number(10) NOT NULL, 
  PRIMARY KEY (ProductFamilyId, 
  OperationId, 
  Operation_SequenceNumber));
CREATE TABLE Colour (
  Id   number(5), 
  Name varchar2(100) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Component (
  PartNumber  varchar2(100) NOT NULL, 
  Description varchar2(255) NOT NULL, 
  PRIMARY KEY (PartNumber));
CREATE TABLE Component_Colour (
  ComponentNumber varchar2(100) NOT NULL, 
  ColourId        number(5) NOT NULL, 
  PRIMARY KEY (ComponentNumber, 
  ColourId));
CREATE TABLE Component_Material (
  ComponentNumber varchar2(100) NOT NULL, 
  MaterialId      number(10) NOT NULL, 
  PRIMARY KEY (ComponentNumber, 
  MaterialId));
CREATE TABLE Component_Size (
  Id                number(10), 
  ComponentNumber   varchar2(100) NOT NULL, 
  SizeInt           number(10) NOT NULL, 
  MeasurementUnitId number(2) NOT NULL, 
  Description       number(10), 
  PRIMARY KEY (Id));
CREATE TABLE Costumer (
  Id             number(15), 
  CustomerTypeId number(1) NOT NULL, 
  Name           varchar2(255) NOT NULL, 
  VATIN          varchar2(255) NOT NULL UNIQUE, 
  PhoneNumber    number(20), 
  Email          varchar2(255), 
  AddressId      number(10) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE CostumerOrder (
  Id           number(10), 
  CustomerId   number(15) NOT NULL, 
  AddressId    number(10), 
  DateOrder    date NOT NULL, 
  DateDelivery date NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Country (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE CustomerType (
  Id   number(1), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Material (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE MeasurementUnit (
  Id   number(2), 
  Unit varchar2(10) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Operation (
  Id          number(10), 
  Description varchar2(255), 
  PRIMARY KEY (Id));
CREATE TABLE Operation_WorkstationType (
  OperationId       number(10) NOT NULL, 
  WorkstationTypeId varchar2(255) NOT NULL, 
  PRIMARY KEY (OperationId, 
  WorkstationTypeId));
CREATE TABLE Product (
  Id              varchar2(100) NOT NULL, 
  ProductFamilyId number(10) NOT NULL, 
  Name            varchar2(255) NOT NULL UNIQUE, 
  Description     varchar2(255), 
  PRIMARY KEY (Id));
CREATE TABLE Product_Colour (
  ProductId varchar2(100) NOT NULL, 
  ColourId  number(5) NOT NULL, 
  PRIMARY KEY (ProductId, 
  ColourId));
CREATE TABLE Product_Material (
  ProductId  varchar2(100) NOT NULL, 
  MaterialId number(10) NOT NULL, 
  PRIMARY KEY (ProductId, 
  MaterialId));
CREATE TABLE Product_Size (
  Id                number(10), 
  ProductId         varchar2(100) NOT NULL, 
  SizeInt           number(10) NOT NULL, 
  MeasurementUnitId number(2) NOT NULL, 
  Description       varchar2(20), 
  PRIMARY KEY (Id));
CREATE TABLE ProductFamily (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE ProductionOrder (
  OrderId   number(10) NOT NULL, 
  ProductId varchar2(100) NOT NULL, 
  Quantity  number(6) NOT NULL, 
  PRIMARY KEY (OrderId, 
  ProductId));
CREATE TABLE SystemRoles (
  Id   number(10), 
  Role varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE SystemUser (
  CostumerNif   number(15) NOT NULL, 
  SystemRolesId number(10) NOT NULL, 
  PRIMARY KEY (CostumerNif, 
  SystemRolesId));
CREATE TABLE Town (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE WorkstationType (
  Id   varchar2(255) NOT NULL, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
ALTER TABLE Costumer ADD CONSTRAINT FKCostumer423764 FOREIGN KEY (CustomerTypeId) REFERENCES CustomerType (Id);
ALTER TABLE Address ADD CONSTRAINT FKAddress869175 FOREIGN KEY (CountryId) REFERENCES Country (Id);
ALTER TABLE Costumer ADD CONSTRAINT FKCostumer550554 FOREIGN KEY (AddressId) REFERENCES Address (Id);
ALTER TABLE ProductionOrder ADD CONSTRAINT FKProduction653343 FOREIGN KEY (OrderId) REFERENCES CostumerOrder (Id);
ALTER TABLE CostumerOrder ADD CONSTRAINT FKCostumerOr606406 FOREIGN KEY (CustomerId) REFERENCES Costumer (Id);
ALTER TABLE Product ADD CONSTRAINT FKProduct146915 FOREIGN KEY (ProductFamilyId) REFERENCES ProductFamily (Id);
ALTER TABLE ProductionOrder ADD CONSTRAINT FKProduction710427 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE CostumerOrder ADD CONSTRAINT FKCostumerOr325831 FOREIGN KEY (AddressId) REFERENCES Address (Id);
ALTER TABLE SystemUser ADD CONSTRAINT FKSystemUser287031 FOREIGN KEY (CostumerNif) REFERENCES Costumer (Id);
ALTER TABLE SystemUser ADD CONSTRAINT FKSystemUser173648 FOREIGN KEY (SystemRolesId) REFERENCES SystemRoles (Id);
ALTER TABLE Product_Size ADD CONSTRAINT FKProduct_Si749828 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Product_Size ADD CONSTRAINT FKProduct_Si824224 FOREIGN KEY (MeasurementUnitId) REFERENCES MeasurementUnit (Id);
ALTER TABLE Product_Colour ADD CONSTRAINT FKProduct_Co644295 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Product_Colour ADD CONSTRAINT FKProduct_Co44317 FOREIGN KEY (ColourId) REFERENCES Colour (Id);
ALTER TABLE Product_Material ADD CONSTRAINT FKProduct_Ma592336 FOREIGN KEY (MaterialId) REFERENCES Material (Id);
ALTER TABLE Product_Material ADD CONSTRAINT FKProduct_Ma292149 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Operation_WorkstationType ADD CONSTRAINT FKOperation_268727 FOREIGN KEY (OperationId) REFERENCES Operation (Id);
ALTER TABLE Operation_WorkstationType ADD CONSTRAINT FKOperation_247316 FOREIGN KEY (WorkstationTypeId) REFERENCES WorkstationType (Id);
ALTER TABLE BOO ADD CONSTRAINT FKBOO345911 FOREIGN KEY (OperationId) REFERENCES Operation (Id);
ALTER TABLE BOM ADD CONSTRAINT FKBOM584463 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE BOM ADD CONSTRAINT FKBOM151703 FOREIGN KEY (ComponentNumber) REFERENCES Component (PartNumber);
ALTER TABLE Component_Colour ADD CONSTRAINT FKComponent_211222 FOREIGN KEY (ComponentNumber) REFERENCES Component (PartNumber);
ALTER TABLE Component_Colour ADD CONSTRAINT FKComponent_350031 FOREIGN KEY (ColourId) REFERENCES Colour (Id);
ALTER TABLE Component_Material ADD CONSTRAINT FKComponent_834730 FOREIGN KEY (ComponentNumber) REFERENCES Component (PartNumber);
ALTER TABLE Component_Material ADD CONSTRAINT FKComponent_819613 FOREIGN KEY (MaterialId) REFERENCES Material (Id);
ALTER TABLE Component_Size ADD CONSTRAINT FKComponent_133051 FOREIGN KEY (ComponentNumber) REFERENCES Component (PartNumber);
ALTER TABLE Component_Size ADD CONSTRAINT FKComponent_725655 FOREIGN KEY (MeasurementUnitId) REFERENCES MeasurementUnit (Id);
ALTER TABLE BOO ADD CONSTRAINT FKBOO710059 FOREIGN KEY (ProductFamilyId) REFERENCES ProductFamily (Id);
ALTER TABLE Address ADD CONSTRAINT FKAddress379330 FOREIGN KEY (TownId) REFERENCES Town (Id);