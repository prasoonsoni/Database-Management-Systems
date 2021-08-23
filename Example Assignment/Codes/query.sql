-- 1. Create the tables described below

-- creating Client_Master table
CREATE TABLE Client_Master (
    clientno VARCHAR2(6),
    name VARCHAR2(20),
    address VARCHAR2(30),
    city VARCHAR2(10),
    pincode NUMBER(8),
    state VARCHAR2(15),
    baldue NUMBER(10, 2)
);

-- creating Product_Master table
CREATE TABLE Product_Master (
    productno VARCHAR(6),
    description VARCHAR(15),
    um VARCHAR2(10),
    QOH NUMBER(10),
    reorderlvl NUMBER(5),
    sellprice NUMBER(8, 2),
    costprice NUMBER(8, 2)
);

-- 2. Inserting data into the tables

-- a. Inserting in Client Master
INSERT INTO Client_Master VALUES('C00001','Asha','A/14, worli','Mumbai',400054,'Maharashtra',15000);
INSERT INTO Client_Master VALUES('C00002','Lakshmi','65, Nariman','Bangalore',560001,'Karnataka',0);
INSERT INTO Client_Master VALUES('C00003','Puja','P-76, Bandra','Mumbai',400002,'Maharashtra',10000);
INSERT INTO Client_Master VALUES('C00004','Shankar','A/6, Juhu','Mangalore',400044,'Karnataka',5000);
INSERT INTO Client_Master VALUES('C00005','Deepak','68, TNagar','Chennai',6320018,'Tamilnadu',0);

-- b. Inserting in Product Master
INSERT INTO Product_Master VALUES('P00001','T-Shirts','Piece',200,40,350,250);
INSERT INTO Product_Master VALUES('P0345','Shirts','Piece',150,50,500,350);
INSERT INTO Product_Master VALUES('P06744','Cotton Jeans','Piece',50,20,600,450);
INSERT INTO Product_Master VALUES('P0990','Chuddy','Piece',100,40,400,250);
INSERT INTO Product_Master VALUES('P08823','Sarries','Piece',60,50,500,300);

-- 3. Retrieving records from a table

-- a. Find out the names of all the clients
SELECT name FROM Client_Master;

-- b. Retrieve the entire contents of the Client_Master table
SELECT * FROM Client_Master;

-- c. Retrieve the list of names, city and the state of all the clients
SELECT name, city, state FROM Client_Master;

-- d. List the various products available from the Product_Master table.
SELECT description FROM Product_Master;

-- e. List all the clients who are located in Mumbai.
SELECT * FROM Client_Master WHERE city = 'Mumbai';

-- 4. Updating records in a table

-- a. Change the City of Clientno ‘C00001’ to ‘Chennai’
UPDATE Client_Master SET city = 'Chennai' WHERE clientno = 'C00001';

-- b. Change the Baldue of Clientno ‘C00005’ to Rs.1000
UPDATE Client_Master SET baldue = 1000 WHERE clientno = 'C00005';

-- c. Change the cost price of ‘shirts’ to Rs. 400
UPDATE Product_Master SET costprice = 400 WHERE description = 'Shirts';

--d. Change the QOH of the ‘T-shirts’ to 150
UPDATE Product_Master SET QOH = 150 WHERE description = 'T-Shirts';

-- Deleting records in a table

-- a. Delete all products from Product_Master 
--where the quantity on hand is equal to 100
DELETE FROM Product_Master WHERE QOH = 100;

-- b. Delete from Client_Master where the column 
-- state holds the value “Tamilnadu”
DELETE FROM Client_Master WHERE state = 'Tamilnadu';

-- c. Delete all clients from Client_Master where the 
--Baldue is equal to 0.
DELETE FROM Client_Master WHERE baldue = 0;

-- Altering the table structure

-- a. Add a column call Profitpercent of datatype number10,2 
-- to the Product_Master
ALTER TABLE Product_Master ADD (profitpercent NUMBER(10, 2));

-- b. Change the size of sellprice column in Product_Master to 10,2
ALTER TABLE Product_Master MODIFY (sellprice NUMBER(10, 2));

-- c.  Change the name of the column UM to UnitMeasure in Product_Master
ALTER TABLE Product_Master RENAME COLUMN um TO UnitMeasure;

-- d. Drop the column UnitMeasure.
ALTER TABLE Product_Master DROP COLUMN UnitMeasure;

-- e. Drop the table Client_Master along with its data
DROP TABLE Client_Master;