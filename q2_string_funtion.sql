--
-- 由SQLiteStudio v3.1.1 产生的文件 周一 10月 11 12:17:56 2021
--
-- 文本编码：System
--
-- 执行结果：
-- select distinct ShipName,substr(ShipName,1,instr(ShipName,'-')-1) str from 'Order' where ShipName like '%-%' order by ShipName
--
BEGIN TRANSACTION;

DROP TABLE IF EXISTS string_funtion;

CREATE TABLE string_funtion (
    ShipName,
    str
);

INSERT INTO string_funtion (ShipName, str) VALUES ('Bottom-Dollar Markets', 'Bottom');
INSERT INTO string_funtion (ShipName, str) VALUES ('Chop-suey Chinese', 'Chop');
INSERT INTO string_funtion (ShipName, str) VALUES ('GROSELLA-Restaurante', 'GROSELLA');
INSERT INTO string_funtion (ShipName, str) VALUES ('HILARION-Abastos', 'HILARION');
INSERT INTO string_funtion (ShipName, str) VALUES ('Hungry Owl All-Night Grocers', 'Hungry Owl All');
INSERT INTO string_funtion (ShipName, str) VALUES ('LILA-Supermercado', 'LILA');
INSERT INTO string_funtion (ShipName, str) VALUES ('LINO-Delicateses', 'LINO');
INSERT INTO string_funtion (ShipName, str) VALUES ('QUICK-Stop', 'QUICK');
INSERT INTO string_funtion (ShipName, str) VALUES ('Save-a-lot Markets', 'Save');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
