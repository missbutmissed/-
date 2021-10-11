--
-- ��SQLiteStudio v3.1.1 �������ļ� ��һ 10�� 11 14:52:24 2021
--
-- �ı����룺System
--
-- ִ�н����
-- select ProductName,CompanyName,ContactName from
-- (select OrderID,ProductName from OrderDetail od,Product p where p.id = od .ProductId and Discontinued = 1) as ss1,
-- (select o.Id OrderID,CompanyName,ContactName,OrderDate from Customer c,'Order' o where c.Id = o.CustomerId) as ss2
-- where ss1.OrderID = ss2.OrderID group by ProductName having min(OrderDate)
--
BEGIN TRANSACTION;

CREATE TABLE disordered (
    ProductName,
    CompanyName,
    ContactName
);

INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Alice Mutton', 'Consolidated Holdings', 'Elizabeth Brown');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Chef Anton''s Gumbo Mix', 'Piccolo und mehr', 'Georg Pipps');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Guaran�� Fant��stica', 'Piccolo und mehr', 'Georg Pipps');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Mishi Kobe Niku', 'Old World Delicatessen', 'Rene Phillips');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Perth Pasties', 'Piccolo und mehr', 'Georg Pipps');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('R?ssle Sauerkraut', 'Piccolo und mehr', 'Georg Pipps');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Singaporean Hokkien Fried Mee', 'Vins et alcools Chevalier', 'Paul Henriot');
INSERT INTO disordered (ProductName, CompanyName, ContactName) VALUES ('Th��ringer Rostbratwurst', 'Piccolo und mehr', 'Georg Pipps');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
