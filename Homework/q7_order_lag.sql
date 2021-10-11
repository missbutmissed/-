--
-- 由SQLiteStudio v3.1.1 产生的文件 周一 10月 11 16:54:38 2021
--
-- 文本编码：System
--
-- 执行结果：
-- drop table if exists a;
-- create table a as
-- select c1.Id Id,c1.OrderDate currentDate,c2.OrderDate previousDate,JulianDay(c1.OrderDate) - JulianDay(c2.OrderDate) delay from
-- (select Id,OrderDate from 'Order' where CustomerId = 'BLONP' limit 10) as c1,
-- (select Id,OrderDate from 'Order' where CustomerId = 'BLONP' limit 10) as c2
-- where c1.OrderDate > c2.OrderDate group by c1.Id having max(c2.OrderDate);
-- insert into a values((select Id from 'Order' where CustomerId = 'BLONP' limit 1),
-- 	(select OrderDate from 'Order' where CustomerId = 'BLONP' limit 1),
-- 	(select OrderDate from 'Order' where CustomerId = 'BLONP' limit 1),0);
-- select * from a order by currentDate;
--
BEGIN TRANSACTION;

DROP TABLE IF EXISTS order_lag;

CREATE TABLE order_lag (
    Id,
    currentDate,
    previousDate,
    delay
);

INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10265, '2012-07-25', '2012-07-25', 0);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10297, '2012-09-04', '2012-07-25', 41);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10360, '2012-11-22', '2012-09-04', 79);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10436, '2013-02-05', '2012-11-22', 75);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10449, '2013-02-18', '2013-02-05', 13);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10559, '2013-06-05', '2013-02-18', 107);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10566, '2013-06-12', '2013-06-05', 7);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10584, '2013-06-30', '2013-06-12', 18);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10628, '2013-08-12', '2013-06-30', 43);
INSERT INTO order_lag (Id, currentDate, previousDate, delay) VALUES (10679, '2013-09-23', '2013-08-12', 42);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
