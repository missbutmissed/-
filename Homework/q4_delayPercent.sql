--
-- ��SQLiteStudio v3.1.1 �������ļ� ��һ 10�� 11 15:12:04 2021
--
-- �ı����룺System
--
-- ִ�н����
-- select a1.CompanyName CompanyName,round(a2.rightNumber/a1.totalNumber,2) chance from 
-- (select ShipVia,CompanyName,cast(count(*) as real) totalNumber from 'Order' o,Shipper s where o.ShipVia = s.Id group by ShipVia) a1,
-- (select ShipVia,cast(count(*) as real) rightNumber from 'Order' o,Shipper s where o.ShipVia = s.Id and ShippedDate > RequiredDate group by ShipVia) a2
-- where a1.ShipVia = a2.ShipVia order by chance desc
--
BEGIN TRANSACTION;

DROP TABLE IF EXISTS delayPercent;

CREATE TABLE delayPercent (
    CompanyName,
    chance
);

INSERT INTO delayPercent (CompanyName, chance) VALUES ('Federal Shipping', 0.24);
INSERT INTO delayPercent (CompanyName, chance) VALUES ('Speedy Express', 0.23);
INSERT INTO delayPercent (CompanyName, chance) VALUES ('United Package', 0.23);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
