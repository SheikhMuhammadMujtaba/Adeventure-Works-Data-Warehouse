.LOGON 192.168.178.128/DBC,DBC
DATABASE DB_RDM;

--PERSON MODULE
CREATE MULTISET TABLE DB_RDM.Address AS DB_STG2.Address
WITH DATA;

CREATE MULTISET TABLE DB_RDM.AddressType AS DB_STG2.AddressType
WITH DATA;

CREATE MULTISET TABLE DB_RDM.BusinessEntityAddress AS DB_STG2.BusinessEntityAddress
WITH DATA;

CREATE MULTISET TABLE DB_RDM.Passwords AS DB_STG2.Passwords
WITH DATA;

CREATE MULTISET TABLE DB_RDM.BusinessEntity AS DB_STG2.BusinessEntity
WITH DATA;

CREATE MULTISET TABLE DB_RDM.CountryRegion AS DB_STG2.CountryRegion
WITH DATA;

CREATE MULTISET TABLE DB_RDM.StateProvince AS DB_STG2.StateProvince
WITH DATA;

CREATE MULTISET TABLE DB_RDM.EmailAddress AS DB_STG2.EmailAddress
WITH DATA;

CREATE MULTISET TABLE DB_RDM.Person AS DB_STG2.Person
WITH DATA;

CREATE MULTISET TABLE DB_RDM.PersonPhone AS DB_STG2.PersonPhone
WITH DATA;

CREATE MULTISET TABLE DB_RDM.PhoneNumberType (PhoneNumberType INTEGER,Name1 VARCHAR(8))
UNIQUE PRIMARY INDEX (PhoneNumberType);
INSERT INTO DB_RDM.PhoneNumberType
SELECT *
FROM DB_STG2.PhoneNumberType;

--HR MODULE
CREATE MULTISET TABLE DB_RDM.Employee AS DB_STG2.Employee WITH DATA;

CREATE MULTISET TABLE DB_RDM.Department
(
            DepartmentID INTEGER ,
			DepartmentName VARCHAR(32),
			GroupName VARCHAR(32)
)

UNIQUE PRIMARY INDEX (DepartmentID);
INSERT INTO DB_RDM.Department
Select *
From DB_STG2.Department;

CREATE MULTISET TABLE DB_RDM.EmployeeDepartmentHistory AS DB_STG2.EmployeeDepartmentHistory WITH DATA;

CREATE MULTISET TABLE DB_RDM.Shift 
     (
      ShiftID INTEGER ,
      Name1 CHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC,
      StartTime TIME(6),
      EndTime TIME(6))
UNIQUE PRIMARY INDEX ( ShiftID );

INSERT INTO DB_RDM.Shift
Select *
FROM DB_STG2.Shift;

--Product Module

CREATE MULTISET TABLE DB_RDM.TransactionHistory( 
TransactionID INTEGER,
ProductID INTEGER,
ReferenceOrderID INTEGER,
ReferenceOrderLineID SMALLINT,
TransactionDate DATE FORMAT 'MM/DD/YYYY',
TransactionType VARCHAR(8),
Quantity SMALLINT,
ActualCost DECIMAL(10,2)
)
PRIMARY INDEX ( TransactionID )
PARTITION BY RANGE_N(TransactionDate  BETWEEN DATE '2007-08-01' AND '2020-07-31' EACH INTERVAL '1' DAY );

INSERT INTO DB_RDM.TransactionHistory
SELECT * FROM  DB_STG2.TransactionHistory;


CREATE MULTISET TABLE DB_RDM.Culture 
AS DB_STG2.Culture
WITH DATA;


--CREATE MULTISET TABLE DB_RDM.Location 
--AS DB_STG2.Location
--WITH DATA;


CREATE MULTISET TABLE DB_RDM.Product 
AS DB_STG2.Product
WITH DATA;

CREATE MULTISET TABLE DB_RDM.ProductCostHistory 
AS DB_STG2.ProductCostHistory
WITH DATA;


CREATE MULTISET TABLE DB_RDM.ProductDescription 
AS DB_STG2.ProductDescription
WITH DATA;


CREATE MULTISET TABLE DB_RDM.ProductInventory 
AS DB_STG2.ProductInventory
WITH DATA;


CREATE MULTISET TABLE DB_RDM.ProductListPriceHistory 
AS DB_STG2.ProductListPriceHistory
WITH DATA;


CREATE MULTISET TABLE DB_RDM.ProductModel 
AS DB_STG2.ProductModel
WITH DATA;


CREATE MULTISET TABLE DB_RDM.ProductModelProductDesctriptionCulture 
AS DB_STG2.ProductModelProductDesctriptionCulture
WITH DATA;


CREATE MULTISET TABLE DB_RDM.WorkOrder
AS DB_STG2.WorkOrder
WITH DATA;

CREATE MULTISET TABLE DB_RDM.WorkOrderRouting
AS DB_STG2.WorkOrderRouting
WITH DATA;

CREATE MULTISET TABLE DB_RDM.UnitMeasure
AS DB_STG2.UnitMeasure
WITH DATA;

CREATE MULTISET TABLE DB_RDM.ProductCategory 
AS DB_STG2.ProductCategory
WITH DATA;

CREATE MULTISET TABLE DB_RDM.ProductSubcategory 
AS DB_STG2.ProductSubcategory
WITH DATA;

CREATE MULTISET TABLE DB_RDM.ScrapReason
AS DB_STG2.ScrapReason
WITH DATA;

CREATE MULTISET TABLE DB_RDM.BillofMaterials
AS DB_STG2.BillofMaterials
WITH DATA;

--Person Module

--CREATE MULTISET TABLE DB_RDM.Address AS DB_STG2.Address
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.AddressType AS DB_STG2.AddressType
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.BusinessEntityAddress AS DB_STG2.BusinessEntityAddress
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.Passwords AS DB_STG2.Passwords
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.BusinessEntity AS DB_STG2.BusinessEntity
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.CountryRegion AS DB_STG2.CountryRegion
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.StateProvince AS DB_STG2.StateProvince
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.EmailAddress AS DB_STG2.EmailAddress
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.Person AS DB_STG2.Person
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.PersonPhone AS DB_STG2.PersonPhone
--WITH DATA;

--CREATE MULTISET TABLE DB_RDM.PhoneNumberType (
--PhoneNumberType INTEGER,
--Name1 VARCHAR(8)
--)
--UNIQUE PRIMARY INDEX (PhoneNumberType);
--INSERT INTO DB_RDM.PhoneNumberType
--SELECT *
--FROM DB_STG2.PhoneNumberType;

--Sales Module

CREATE MULTISET TABLE DB_RDM.ShoppingCartItem AS DB_STG2.ShoppingCartItem
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SpecialOffer AS DB_STG2.SpecialOffer
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SpecialOfferProduct AS DB_STG2.SpecialOfferProduct
WITH DATA;

CREATE MULTISET TABLE DB_RDM.Store AS DB_STG2.Store
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SalesOrderHeaderSalesReason AS DB_STG2.SalesOrderHeaderSalesReason
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SalesPerson AS DB_STG2.SalesPerson
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SalesPersonQuotaHistory AS DB_STG2.SalesPersonQuotaHistory
WITH DATA;


CREATE MULTISET TABLE DB_RDM.SalesReason AS DB_STG2.SalesReason
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SalesTaxRate AS DB_STG2.SalesTaxRate
WITH DATA;


CREATE MULTISET TABLE DB_RDM.SalesTerritory AS DB_STG2.SalesTerritory
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SalesTerritoryHistory AS DB_STG2.SalesTerritoryHistory
WITH DATA;

CREATE MULTISET TABLE DB_RDM.Currency AS DB_STG2.Currency
WITH DATA;

CREATE MULTISET TABLE DB_RDM.CurrencyRate AS DB_STG2.CurrencyRate
WITH DATA;

CREATE MULTISET TABLE DB_RDM.Customer AS DB_STG2.Customer
WITH DATA;

CREATE MULTISET TABLE DB_RDM.CreditCard AS DB_STG2.CreditCard
WITH DATA;

CREATE MULTISET TABLE DB_RDM.PersonCreditCard AS DB_STG2.PersonCreditCard
WITH DATA;

CREATE MULTISET TABLE DB_RDM.SalesOrderHeader AS DB_STG2.SalesOrderHeader
WITH DATA
PRIMARY INDEX(SalesOrderID) 
PARTITION BY RANGE_N  (
   OrderDate BETWEEN DATE '2000-01-01' AND '2019-12-31' EACH INTERVAL '1' MONTH);

CREATE MULTISET TABLE DB_RDM.SalesOrderDetail AS DB_STG2.SalesOrderDetail
WITH DATA
PRIMARY INDEX(SalesOrderID) 
PARTITION BY ProductID;





CREATE MULTISET TABLE db_rdm.Vendor 
AS db_stg2.Vendor
WITH DATA;


CREATE MULTISET TABLE db_rdm.ShipMethod 
AS db_stg2.ShipMethod
WITH DATA;


CREATE MULTISET TABLE db_rdm.ProductVendor 
AS db_stg2.ProductVendor
WITH DATA;

--Partitioned_Tables
CREATE MULTISET TABLE db_rdm.PurchaseOrderHeader (PurchaseOrderID INTEGER,ShipMethodID INTEGER,VendorID INTEGER,RevisionNumber INTEGER,Status INTEGER,EmployeeID INTEGER,OrderDate DATE FORMAT 'MM/DD/YYYY',ShipDate DATE FORMAT 'MM/DD/YYYY',SubTotal DECIMAL(9,2),TaxAmt DECIMAL(7,2),Freight DECIMAL(7,2),TotalDue DECIMAL(9,2))
PRIMARY INDEX(PurchaseOrderID)
PARTITION BY RANGE_N(OrderDate  BETWEEN DATE '2005-01-01' AND '2020-12-31' EACH INTERVAL '1' DAY );

INSERT INTO db_rdm.PurchaseOrderHeader
SELECT * FROM  db_stg2.PurchaseOrderHeader ;



CREATE MULTISET TABLE db_rdm.PurchaseOrderDetail ( 
       PurchaseOrderID INTEGER,
           PurchaseOrderDetailID INTEGER,
		   DueDate DATE FORMAT 'MM/DD/YYYY',
		   ProductID INTEGER,
		   OrderQty INTEGER,
		   UnitPrice DECIMAL(7,2),
		   LineTotal DECIMAL(9,2),
		   ReceivedQty INTEGER,
		   RejectedQty INTEGER,
		   StockedQty INTEGER
)
PRIMARY INDEX(PurchaseOrderID,PurchaseOrderDetailID)
PARTITION BY ProductID;

INSERT INTO db_rdm.PurchaseOrderDetail
SELECT * FROM  db_stg2.PurchaseOrderDetail;

.LOGOFF