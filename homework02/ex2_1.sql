-- If these tables have already been created, drop them.
DROP TABLE Customer;
DROP TABLE City;
DROP TABLE Customer_Order;
DROP TABLE Order_Item;
DROP TABLE Item;
DROP TABLE Shipment;
DROP TABLE Warehouse;

-- Create tables
CREATE TABLE Customer (
	Cust_id	NUMBER(5) PRIMARY KEY,
	CName VARCHAR2(15) NOT NULL,
	City_id NUMBER(5)
);

CREATE TABLE City (
	City_id	NUMBER(5) PRIMARY KEY,
	CityName VARCHAR2(15) NOT NULL,
);

-- I am not calling this table Order in order to avoid ambiguity with the 'ORDER' keyword
CREATE TABLE Customer_Order (
	Order_id NUMBER(5),
	Odate	DATE,
	Cust_id Number(5) NOT NULL,
	Ord_amt Number(9),
);

CREATE TABLE Order_Item (
	Order_id NUMBER(5),
	Item_id NUMBER(5),
	City_id NUMBER(5) NOT NULL
	-- This City ID can be different than the customer City ID if the order is not being shipped to the customer's home address
);

CREATE TABLE Item (
	Item_id NUMBER(5) PRIMARY KEY,
	Unit_price NUMBER(9)
);

CREATE TABLE Shipment (
	Order_id NUMBER(5),
	Warehouse_id NUMBER(5),
	Ship_date DATE
);

CREATE TABLE Warehouse (
	Warehouse_id NUMBER(5),
	City_id NUMBER(5)
);