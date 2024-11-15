CREATE TABLE Address (
  Id        number(10), 
  Street    varchar2(255) NOT NULL, 
  ZipCode   varchar2(15) NOT NULL, 
  TownId    number(10) NOT NULL, 
  CountryId number(10) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE BOO (
  Id          number(10), 
  ProductId   varchar2(255) NOT NULL, 
  OperationId number(10) NOT NULL, 
  OutputId    varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Colour (
  Id   number(5), 
  Name varchar2(100) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Component (
  Id varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Country (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Customer (
  Id             number(15), 
  CustomerTypeId number(1) NOT NULL, 
  Name           varchar2(255) NOT NULL, 
  VATIN          varchar2(255) NOT NULL UNIQUE, 
  PhoneNumber    number(20), 
  Email          varchar2(255), 
  AddressId      number(10) NOT NULL, 
  State          char(1) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE CustomerOrder (
  Id           number(10), 
  CustomerId   number(15) NOT NULL, 
  AddressId    number(10) NOT NULL, 
  DateOrder    date NOT NULL, 
  DateDelivery date NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE CustomerOrderLine (
  CustomerOrderId number(10) NOT NULL, 
  ProductId       varchar2(255) NOT NULL, 
  Quantity        number(6) NOT NULL, 
  PRIMARY KEY (CustomerOrderId, 
  ProductId));
CREATE TABLE CustomerType (
  Id   number(1), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE IntermediateProduct (
  Id varchar2(255) NOT NULL, 
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
CREATE TABLE Part (
  Id   varchar2(255) NOT NULL, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Part_BOO (
  BOOId    number(10) NOT NULL, 
  PartId   varchar2(255) NOT NULL, 
  Quantity number(6) NOT NULL, 
  PRIMARY KEY (BOOId, 
  PartId));
CREATE TABLE Product (
  Id              varchar2(255) NOT NULL, 
  ProductFamilyId number(10) NOT NULL, 
  Description     varchar2(255), 
  PRIMARY KEY (Id));
CREATE TABLE Product_Colour (
  ProductId varchar2(255) NOT NULL, 
  ColourId  number(5) NOT NULL, 
  PRIMARY KEY (ProductId, 
  ColourId));
CREATE TABLE Product_Material (
  ProductId  varchar2(255) NOT NULL, 
  MaterialId number(10) NOT NULL, 
  PRIMARY KEY (ProductId, 
  MaterialId));
CREATE TABLE Product_Size (
  Id                number(10), 
  ProductId         varchar2(255) NOT NULL, 
  SizeInt           number(10) NOT NULL, 
  MeasurementUnitId number(2) NOT NULL, 
  Description       varchar2(20), 
  PRIMARY KEY (Id));
CREATE TABLE ProductFamily (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE ProductionOrder (
  Id              number(10), 
  CustomerOrderId number(10) NOT NULL, 
  ProductId       varchar2(255) NOT NULL, 
  "Date"          date NOT NULL, 
  Quantity        number(6) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE RawMaterial (
  Id varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Town (
  Id   number(10), 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Workstation (
  Id                number(10), 
  WorkstationTypeId varchar2(255) NOT NULL, 
  Name              varchar2(50) NOT NULL, 
  Description       varchar2(255), 
  PRIMARY KEY (Id));
CREATE TABLE WorkstationType (
  Id   varchar2(255) NOT NULL, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
ALTER TABLE Customer ADD CONSTRAINT FKCustomer670752 FOREIGN KEY (CustomerTypeId) REFERENCES CustomerType (Id);
ALTER TABLE Address ADD CONSTRAINT FKAddress869175 FOREIGN KEY (CountryId) REFERENCES Country (Id);
ALTER TABLE Customer ADD CONSTRAINT FKCustomer673480 FOREIGN KEY (AddressId) REFERENCES Address (Id);
ALTER TABLE CustomerOrderLine ADD CONSTRAINT FKCustomerOr552294 FOREIGN KEY (CustomerOrderId) REFERENCES CustomerOrder (Id);
ALTER TABLE CustomerOrder ADD CONSTRAINT FKCustomerOr409394 FOREIGN KEY (CustomerId) REFERENCES Customer (Id);
ALTER TABLE Product ADD CONSTRAINT FKProduct146915 FOREIGN KEY (ProductFamilyId) REFERENCES ProductFamily (Id);
ALTER TABLE CustomerOrderLine ADD CONSTRAINT FKCustomerOr477220 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE CustomerOrder ADD CONSTRAINT FKCustomerOr965697 FOREIGN KEY (AddressId) REFERENCES Address (Id);
ALTER TABLE Product_Size ADD CONSTRAINT FKProduct_Si749828 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Product_Size ADD CONSTRAINT FKProduct_Si824224 FOREIGN KEY (MeasurementUnitId) REFERENCES MeasurementUnit (Id);
ALTER TABLE Product_Colour ADD CONSTRAINT FKProduct_Co644295 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Product_Colour ADD CONSTRAINT FKProduct_Co44317 FOREIGN KEY (ColourId) REFERENCES Colour (Id);
ALTER TABLE Product_Material ADD CONSTRAINT FKProduct_Ma592336 FOREIGN KEY (MaterialId) REFERENCES Material (Id);
ALTER TABLE Product_Material ADD CONSTRAINT FKProduct_Ma292149 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Operation_WorkstationType ADD CONSTRAINT FKOperation_268727 FOREIGN KEY (OperationId) REFERENCES Operation (Id);
ALTER TABLE Operation_WorkstationType ADD CONSTRAINT FKOperation_247316 FOREIGN KEY (WorkstationTypeId) REFERENCES WorkstationType (Id);
ALTER TABLE BOO ADD CONSTRAINT FKBOO345911 FOREIGN KEY (OperationId) REFERENCES Operation (Id);
ALTER TABLE Address ADD CONSTRAINT FKAddress379330 FOREIGN KEY (TownId) REFERENCES Town (Id);
ALTER TABLE RawMaterial ADD CONSTRAINT FKRawMateria383607 FOREIGN KEY (Id) REFERENCES Part (Id);
ALTER TABLE Component ADD CONSTRAINT FKComponent546372 FOREIGN KEY (Id) REFERENCES Part (Id);
ALTER TABLE Product ADD CONSTRAINT FKProduct665445 FOREIGN KEY (Id) REFERENCES Part (Id);
ALTER TABLE ProductionOrder ADD CONSTRAINT FKProduction758060 FOREIGN KEY (CustomerOrderId, ProductId) REFERENCES CustomerOrderLine (CustomerOrderId, ProductId);
ALTER TABLE Workstation ADD CONSTRAINT FKWorkstatio223030 FOREIGN KEY (WorkstationTypeId) REFERENCES WorkstationType (Id);
ALTER TABLE Part_BOO ADD CONSTRAINT FKPart_BOO896893 FOREIGN KEY (PartId) REFERENCES Part (Id);
ALTER TABLE BOO ADD CONSTRAINT FKBOO375125 FOREIGN KEY (OutputId) REFERENCES Part (Id);
ALTER TABLE Part_BOO ADD CONSTRAINT FKPart_BOO618708 FOREIGN KEY (BOOId) REFERENCES BOO (Id);
ALTER TABLE BOO ADD CONSTRAINT FKBOO584461 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE IntermediateProduct ADD CONSTRAINT FKIntermedia669857 FOREIGN KEY (Id) REFERENCES Part (Id);
