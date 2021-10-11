--
-- 由SQLiteStudio v3.1.1 产生的文件 周一 10月 11 17:29:53 2021
--
-- 文本编码：System
--
-- 执行结果：
-- select RegionDescription,LastName,FirstName,BirthDate from
-- (select distinct et.EmployeeId Id,RegionDescription,sss.RegionId RegionId from
-- (select t.Id Id,RegionDescription,t.RegionId RegionId from Region r,Territory t
-- where t.RegionId = r.Id) as sss,EmployeeTerritory as et
-- where sss.Id = et.TerritoryId) as ssss,Employee e
-- where e.Id = ssss.Id group by RegionDescription having min(BirthDate) order by RegionId
--
BEGIN TRANSACTION;

CREATE TABLE youngblood (
    RegionDescription,
    LastName,
    FirstName,
    BirthDate
);

INSERT INTO youngblood (RegionDescription, LastName, FirstName, BirthDate) VALUES ('Eastern', 'Peacock', 'Margaret', '1969-09-19');
INSERT INTO youngblood (RegionDescription, LastName, FirstName, BirthDate) VALUES ('Western', 'King', 'Robert', '1992-05-29');
INSERT INTO youngblood (RegionDescription, LastName, FirstName, BirthDate) VALUES ('Northern', 'Callahan', 'Laura', '1990-01-09');
INSERT INTO youngblood (RegionDescription, LastName, FirstName, BirthDate) VALUES ('Southern', 'Leverling', 'Janet', '1995-08-30');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
