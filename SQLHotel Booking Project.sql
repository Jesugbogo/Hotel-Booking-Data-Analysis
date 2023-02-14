--To select all the data in the year 2018
SELECT * FROM dbo.[2018]
--Row count: 21,996 rows
--To select all the data in the year 2019
SELECT * FROM dbo.[2019]
--Row count: 79,264 rows
--To select all the data in the year 2020
SELECT * FROM dbo.[2020]
--Row count: 40,687 rows

--To combine all the data from the three years into one big table using the Union Statement
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020]
--Row count: 100,756 rows

--EXPLORATORY DATA ANALYSIS
 
--Create as a temporary table named 'hotels' with all the combined years
WITH HOTELS AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT * FROM HOTELS
--Row count: 100,756 rows (Still the same as previous because we simply converted the result of the last query into a temporary table.)

--CALCLATE REVENUE
--To calculate revenue, we have to add the stays_in_weekend_nights with the stays_in_week_nights and multiply the result by adr

--Adding the stays_in weekend_nights and stays_in_week_nights in the table
WITH HOTELS AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT stays_in_weekend_nights + stays_in_week_nights FROM HOTELS

--Adding the stays_in weekend_nights and stays_in_week_nights and multiplying it by adr(average daily rate) to get the revenue
WITH HOTELS AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT (stays_in_weekend_nights + stays_in_week_nights)*adr AS Revenue FROM HOTELS

--To see how the revenue increases by year
WITH HOTELS AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT arrival_date_year,
(stays_in_weekend_nights + stays_in_week_nights)*adr AS Revenue 
FROM HOTELS

--To calculate the total revenue for each year
WITH HOTELS AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT arrival_date_year,
sum((stays_in_weekend_nights + stays_in_week_nights)*adr) AS Revenue 
FROM HOTELS
GROUP BY arrival_date_year






