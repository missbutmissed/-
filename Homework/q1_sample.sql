--
-- ��SQLiteStudio v3.1.1 �������ļ� ��һ 10�� 11 12:16:57 2021
--
-- �ı����룺System
--
-- ִ�н����
-- SELECT CategoryName FROM Category ORDER BY CategoryName
--
BEGIN TRANSACTION;

CREATE TABLE sample (
    CategoryName
);

INSERT INTO sample (CategoryName) VALUES ('Beverages');
INSERT INTO sample (CategoryName) VALUES ('Condiments');
INSERT INTO sample (CategoryName) VALUES ('Confections');
INSERT INTO sample (CategoryName) VALUES ('Dairy Products');
INSERT INTO sample (CategoryName) VALUES ('Grains/Cereals');
INSERT INTO sample (CategoryName) VALUES ('Meat/Poultry');
INSERT INTO sample (CategoryName) VALUES ('Produce');
INSERT INTO sample (CategoryName) VALUES ('Seafood');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
