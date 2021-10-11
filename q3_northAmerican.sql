--
-- 由SQLiteStudio v3.1.1 产生的文件 周一 10月 11 12:18:34 2021
--
-- 文本编码：System
--
-- 执行结果：
-- select id,ShipCountry,case when ShipCountry in('USA','Mexico','Canada') then 'NorthAmerica' else 'OtherPlace' end as isNorthAmerica from 'Order' where id >= 15445 order by id limit 20
--
BEGIN TRANSACTION;

CREATE TABLE northAmerican (
    id,
    ShipCountry,
    isNorthAmerica
);

INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15445, 'France', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15446, 'Italy', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15447, 'Portugal', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15448, 'Argentina', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15449, 'Portugal', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15450, 'Venezuela', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15451, 'Brazil', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15452, 'France', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15453, 'France', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15454, 'Canada', 'NorthAmerica');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15455, 'USA', 'NorthAmerica');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15456, 'France', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15457, 'Mexico', 'NorthAmerica');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15458, 'USA', 'NorthAmerica');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15459, 'Germany', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15460, 'Argentina', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15461, 'Austria', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15462, 'Austria', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15463, 'Finland', 'OtherPlace');
INSERT INTO northAmerican (id, ShipCountry, isNorthAmerica) VALUES (15464, 'Brazil', 'OtherPlace');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
