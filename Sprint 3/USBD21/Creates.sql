CREATE TABLE Address (
  Id        number(10) GENERATED AS IDENTITY, 
  Street    varchar2(255) NOT NULL, 
  ZipCode   varchar2(15) NOT NULL, 
  TownId    number(10) NOT NULL, 
  CountryId number(10) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE BOO (
  Id        varchar2(10) NOT NULL, 
  ProductId varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Colour (
  Id   number(5) GENERATED AS IDENTITY, 
  Name varchar2(100) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Component (
  Id varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Country (
  Id   number(10) GENERATED AS IDENTITY, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Customer (
  Id             number(15) GENERATED AS IDENTITY, 
  CustomerTypeId number(1) NOT NULL, 
  Name           varchar2(255) NOT NULL, 
  VATIN          varchar2(255) NOT NULL UNIQUE, 
  PhoneNumber    number(20), 
  Email          varchar2(255), 
  AddressId      number(10) NOT NULL, 
  CustomerState  char(1) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE CustomerOrder (
  Id           number(10) GENERATED AS IDENTITY, 
  CustomerId   number(15) NOT NULL, 
  AddressId    number(10) NOT NULL, 
  DateOrder    date NOT NULL, 
  DateDelivery date NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE CustomerOrderLine (
  CustomerOrderId number(10) NOT NULL, 
  ProductId       varchar2(255) NOT NULL, 
  Quantity        number(6) NOT NULL, 
  ProductId2      varchar2(255) NOT NULL, 
  PRIMARY KEY (CustomerOrderId, 
  ProductId, 
  ProductId2));
CREATE TABLE CustomerType (
  Id   number(1) GENERATED AS IDENTITY, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE ExternalPart (
  Id            varchar2(255) NOT NULL, 
  MinimumStock  number(10) NOT NULL, 
  Stock         number(10) NOT NULL, 
  ReservedStock number(10) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE IntermediateProduct (
  Id varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Material (
  Id   number(10) GENERATED AS IDENTITY, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE MeasurementUnit (
  Id   number(2) GENERATED AS IDENTITY, 
  Unit varchar2(10) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Operation (
  Id              number(10) GENERATED AS IDENTITY, 
  OperationTypeId number(10) NOT NULL, 
  BOOId           varchar2(10) NOT NULL, 
  NextOp          number(10), 
  ExpectedTime    number(10) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE OperationInput (
  OperationId       number(10) NOT NULL, 
  PartId            varchar2(255) NOT NULL, 
  Quantity          number(6) NOT NULL, 
  MeasurementUnitId number(2) NOT NULL, 
  PRIMARY KEY (OperationId, 
  PartId));
CREATE TABLE OperationType (
  Id          number(10) GENERATED AS IDENTITY, 
  Description varchar2(255), 
  PRIMARY KEY (Id));
CREATE TABLE OperationType_WorkstationType (
  OperationTypeId   number(10) NOT NULL, 
  WorkstationTypeId varchar2(255) NOT NULL, 
  SetupTime         number(10) NOT NULL, 
  MaximumTime       number(10) NOT NULL, 
  PRIMARY KEY (OperationTypeId, 
  WorkstationTypeId));
CREATE TABLE OutputPart (
  PartId            varchar2(255) NOT NULL, 
  OperationId       number(10) NOT NULL UNIQUE, 
  Quantity          number(7) NOT NULL, 
  MeasurementUnitId number(2) NOT NULL, 
  PRIMARY KEY (PartId));
CREATE TABLE Part (
  Id   varchar2(255) NOT NULL, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Procurement (
  SupplierId     number(10) NOT NULL, 
  ExternalPartId varchar2(255) NOT NULL, 
  StartDate      date NOT NULL, 
  EndDate        date, 
  MinQuantity    number(10) NOT NULL, 
  Price          number(10, 2) NOT NULL, 
  PRIMARY KEY (SupplierId, 
  ExternalPartId, 
  StartDate));
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
  Id                number(10) GENERATED AS IDENTITY, 
  ProductId         varchar2(255) NOT NULL, 
  SizeInt           number(10) NOT NULL, 
  MeasurementUnitId number(2) NOT NULL, 
  Description       varchar2(20), 
  PRIMARY KEY (Id));
CREATE TABLE ProductFamily (
  Id   number(10) GENERATED AS IDENTITY, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE ProductionOrder (
  Id                          number(10) GENERATED AS IDENTITY, 
  CustomerOrderId             number(10) NOT NULL, 
  ProductId                   varchar2(255) NOT NULL, 
  ProductionDate              date NOT NULL, 
  Quantity                    number(6) NOT NULL, 
  CustomerOrderLineProductId2 varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE RawMaterial (
  Id varchar2(255) NOT NULL, 
  PRIMARY KEY (Id));
CREATE TABLE Supplier (
  Id number(10) GENERATED AS IDENTITY, 
  PRIMARY KEY (Id));
CREATE TABLE Town (
  Id   number(10) GENERATED AS IDENTITY, 
  Name varchar2(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Id));
CREATE TABLE Workstation (
  Id                number(10) GENERATED AS IDENTITY, 
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
ALTER TABLE CustomerOrderLine ADD CONSTRAINT FKCustomerOr176602 FOREIGN KEY (ProductId2) REFERENCES Product (Id);
ALTER TABLE CustomerOrder ADD CONSTRAINT FKCustomerOr965697 FOREIGN KEY (AddressId) REFERENCES Address (Id);
ALTER TABLE Product_Size ADD CONSTRAINT FKProduct_Si749828 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Product_Size ADD CONSTRAINT FKProduct_Si824224 FOREIGN KEY (MeasurementUnitId) REFERENCES MeasurementUnit (Id);
ALTER TABLE Product_Colour ADD CONSTRAINT FKProduct_Co644295 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Product_Colour ADD CONSTRAINT FKProduct_Co44317 FOREIGN KEY (ColourId) REFERENCES Colour (Id);
ALTER TABLE Product_Material ADD CONSTRAINT FKProduct_Ma592336 FOREIGN KEY (MaterialId) REFERENCES Material (Id);
ALTER TABLE Product_Material ADD CONSTRAINT FKProduct_Ma292149 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE OperationType_WorkstationType ADD CONSTRAINT FKOperationT623868 FOREIGN KEY (OperationTypeId) REFERENCES OperationType (Id);
ALTER TABLE OperationType_WorkstationType ADD CONSTRAINT FKOperationT787415 FOREIGN KEY (WorkstationTypeId) REFERENCES WorkstationType (Id);
ALTER TABLE Address ADD CONSTRAINT FKAddress379330 FOREIGN KEY (TownId) REFERENCES Town (Id);
ALTER TABLE RawMaterial ADD CONSTRAINT FKRawMateria839717 FOREIGN KEY (Id) REFERENCES ExternalPart (Id);
ALTER TABLE ProductionOrder ADD CONSTRAINT FKProduction781465 FOREIGN KEY (CustomerOrderId, ProductId, CustomerOrderLineProductId2) REFERENCES CustomerOrderLine (CustomerOrderId, ProductId, ProductId2);
ALTER TABLE Workstation ADD CONSTRAINT FKWorkstatio223030 FOREIGN KEY (WorkstationTypeId) REFERENCES WorkstationType (Id);
ALTER TABLE OperationInput ADD CONSTRAINT FKOperationI554086 FOREIGN KEY (PartId) REFERENCES Part (Id);
ALTER TABLE Operation ADD CONSTRAINT FKOperation878192 FOREIGN KEY (OperationTypeId) REFERENCES OperationType (Id);
ALTER TABLE Operation ADD CONSTRAINT FKOperation844467 FOREIGN KEY (BOOId) REFERENCES BOO (Id);
ALTER TABLE BOO ADD CONSTRAINT FKBOO584461 FOREIGN KEY (ProductId) REFERENCES Product (Id);
ALTER TABLE Operation ADD CONSTRAINT FKOperation449038 FOREIGN KEY (NextOp) REFERENCES Operation (Id);
ALTER TABLE OperationInput ADD CONSTRAINT FKOperationI182655 FOREIGN KEY (OperationId) REFERENCES Operation (Id);
ALTER TABLE OperationInput ADD CONSTRAINT FKOperationI432616 FOREIGN KEY (MeasurementUnitId) REFERENCES MeasurementUnit (Id);
ALTER TABLE OutputPart ADD CONSTRAINT FKOutputPart760664 FOREIGN KEY (OperationId) REFERENCES Operation (Id);
ALTER TABLE OutputPart ADD CONSTRAINT FKOutputPart582357 FOREIGN KEY (PartId) REFERENCES Part (Id);
ALTER TABLE OutputPart ADD CONSTRAINT FKOutputPart595654 FOREIGN KEY (MeasurementUnitId) REFERENCES MeasurementUnit (Id);
ALTER TABLE IntermediateProduct ADD CONSTRAINT FKIntermedia877524 FOREIGN KEY (Id) REFERENCES OutputPart (PartId);
ALTER TABLE Product ADD CONSTRAINT FKProduct118063 FOREIGN KEY (Id) REFERENCES OutputPart (PartId);
ALTER TABLE ExternalPart ADD CONSTRAINT FKExternalPa258300 FOREIGN KEY (Id) REFERENCES Part (Id);
ALTER TABLE Procurement ADD CONSTRAINT FKProcuremen968729 FOREIGN KEY (SupplierId) REFERENCES Supplier (Id);
ALTER TABLE Procurement ADD CONSTRAINT FKProcuremen37157 FOREIGN KEY (ExternalPartId) REFERENCES ExternalPart (Id);
ALTER TABLE Component ADD CONSTRAINT FKComponent676952 FOREIGN KEY (Id) REFERENCES ExternalPart (Id);
