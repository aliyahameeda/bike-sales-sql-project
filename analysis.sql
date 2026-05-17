use bike_project;
SELECT COUNT(*) FROM bike_sales_dashboardother;
RENAME TABLE bike_sales_dashboardother TO bike_sales;
SELECT COUNT(*) FROM bike_sales;
select * from bike_sales limit 10;
select `Purchased Bike` , count(*) from bike_sales  group by `Purchased Bike`;
desc bike_sales;
select `Gender`,`Purchased Bike`, count(*) from bike_sales group by `Gender`,`Purchased Bike`;
select `Cars`,`Purchased Bike`, count(*) from bike_sales group by `Cars`,`Purchased Bike`;
desc bike_sales;
select * from bike_sales limit 10;
alter table bike_sales change column `Marital Status` marital_status varchar(20);
desc bike_sales;
alter table bike_sales change column `Commute Distance` commute_distance varchar(20);
alter table bike_sales change column `Age Range` age_range varchar(20);
alter table bike_sales change column `Home Owner` home_owner varchar(10);
alter table bike_sales change column `Purchased Bike` purchased_bike varchar(10);
desc bike_sales;
select * from bike_sales;
select count(*) from bike_sales where Income is null or age is null or Gender is null;
select distinct gender from bike_sales;
select distinct purchased_bike from bike_sales;
select distinct marital_status from bike_sales;
desc bike_sales;
select ï»¿ID,count(*) from bike_sales group by ï»¿ID having count(*) >1;
desc bike_sales;
select min(Age), max(Age) from bike_sales;
select min(Income), max(Income) from bike_sales;
select distinct commute_distance from bike_sales;
select purchased_bike, count(*) from bike_sales group by purchased_bike;
select Gender, purchased_bike, count(*) from bike_sales group by Gender,purchased_bike;
select age_range,purchased_bike, count(*) from bike_sales group by age_range,purchased_bike;
select Income,purchased_bike , count(*) from bike_sales group by Income, purchased_bike;
select max(Income) from bike_sales;
select distinct Income from bike_sales;
select replace(replace(Income,'$',''), ',','') as income from bike_sales;
select max(income) from bike_sales;
select distinct income from bike_sales;
SELECT 
REPLACE(REPLACE(Income, '$', ''), ',', '') AS Clean_Income
FROM bike_sales;
SELECT 
CAST(REPLACE(REPLACE(Income, '$', ''), ',', '') AS UNSIGNED) AS Clean_Income
FROM bike_sales;
SELECT 
MAX(CAST(REPLACE(REPLACE(Income, '$', ''), ',', '') AS UNSIGNED)) AS Highest_Income
FROM bike_sales;
select * from bike_sales;
ALTER TABLE bike_sales ADD Clean_Income INT;
UPDATE bike_sales
SET Clean_Income = CAST(REPLACE(REPLACE(Income, '$', ''), ',', '') AS UNSIGNED);
SELECT MAX(Clean_Income) FROM bike_sales;
SELECT Income,
REPLACE(REPLACE(Income, '$', ''), ',', '') AS Clean
FROM bike_sales;
SELECT Income,
REPLACE(REPLACE(Income, '$', ''), ',', '') AS Clean
FROM bike_sales;
SELECT MAX(Clean) FROM bike_sales;
desc bike_sales;
SELECT 
TRIM(REPLACE(REPLACE(Income, '$', ''), ',', '')) AS Clean_Income
FROM bike_sales;
SELECT 
CAST(TRIM(REPLACE(REPLACE(Income, '$', ''), ',', '')) AS UNSIGNED) AS Clean_Income
FROM bike_sales;
SELECT Income
FROM bike_sales
WHERE TRIM(REPLACE(REPLACE(Income, '$', ''), ',', '')) = '';
SELECT 
MAX(CAST(TRIM(REPLACE(REPLACE(Income, '$', ''), ',', '')) AS UNSIGNED)) AS Highest_Income
FROM bike_sales;
select * from bike_sales limit 2;
ALTER TABLE bike_sales ADD Clean_Income INT;
UPDATE bike_sales
SET Clean_Income = CAST(TRIM(REPLACE(REPLACE(Income, '$', ''), ',', '')) AS UNSIGNED);
SET SQL_SAFE_UPDATES = 0;
UPDATE bike_sales
SET Clean_Income = CAST(TRIM(REPLACE(REPLACE(Income, '$', ''), ',', '')) AS UNSIGNED);
SET SQL_SAFE_UPDATES = 1;
select * from bike_sales;
SELECT Income, Clean_Income FROM bike_sales LIMIT 10;
desc bike_sales;
select Children , purchased_bike , count(*) from bike_sales group by Children , purchased_bike;
SELECT age_range, COUNT(*) 
FROM bike_sales
WHERE Purchased_Bike = 'Yes'
GROUP BY age_range;
SELECT age_range, COUNT(*) 
FROM bike_sales
GROUP BY age_range;
desc bike_sales;
select * from bike_sales limit 2;
select count(*) from bike_sales where home_owner = 'Yes' and purchased_bike = 'Yes';
select home_owner, purchased_bike, COUNT(*) FROM bike_sales GROUP BY home_owner, purchased_bike;
select distinct Clean_Income from bike_sales;
SELECT 
CASE 
  WHEN Clean_Income < 50000 THEN 'Low'
  WHEN Clean_Income BETWEEN 50000 AND 100000 THEN 'Middle'
  ELSE 'High'
END AS Income_Group,
Purchased_Bike,
COUNT(*)
FROM bike_sales
GROUP BY Income_Group, Purchased_Bike;
select case when Clean_Income < 50000 then 'Low' when Clean_Income between 50000 and 100000 then 'Middle' else 'High' end as Income_Group, purchased_bike , count(*) from bike_sales group by Income_Group , purchased_bike;
SELECT Commute_Distance, Purchased_Bike, COUNT(*) FROM bike_sales GROUP BY Commute_Distance, Purchased_Bike;
SELECT age_range,purchased_bike ,COUNT(*) 
FROM bike_sales
GROUP BY age_range, purchased_bike;

SELECT Commute_Distance, Purchased_Bike, COUNT(*) FROM bike_sales GROUP BY Commute_Distance, Purchased_Bike;
select age_range, Commute_Distance , count(*) as total from bike_sales group by age_range, Commute_Distance order by total desc;