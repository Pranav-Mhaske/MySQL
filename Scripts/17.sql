--Hacker Rank

--1

SELECT
    *
FROM
    CITY
WHERE
    (COUNTRYCODE = 'USA') AND (POPULATION >= 100000);

--2

select NAME from CITY where POPULATION > 120000 AND COUNTRYCODE = 'USA';

--3

select * from CITY

--4

select * from CITY where ID = 1661;

--5

SELECT * FROM CITY where COUNTRYCODE = 'JPN';

--6

select city, state from station;

--7

SELECT
    distinct (CITY)
FROM
    STATION
WHERE
    (MOD(ID, 2) = 0);

--8

SELECT
    (COUNT(CITY)-COUNT(DISTINCT(CITY)))
FROM STATION;

--9
(
    SELECT CITY, LENGTH(CITY) AS City_Length
    FROM STATION
    ORDER BY City_Length ASC, CITY ASC
    LIMIT 1
)
UNION ALL
(
    SELECT CITY, LENGTH(CITY) AS City_Length
    FROM STATION
    ORDER BY City_Length DESC, CITY ASC
    LIMIT 1
);
    
--10

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u');

--11 (Weather Observation Station 7)

SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    (CITY LIKE '%a') OR (CITY LIKE '%e') OR (CITY LIKE '%i') OR (CITY LIKE '%o') OR (CITY LIKE '%u');

--12 (Revising Aggregations - The Count Function)

SELECT COUNT(*) FROM CITY WHERE CITY.POPULATION > 100000;

--13 (Revising Aggregations - The Sum Function)

SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = 'California';

--x
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u')
  AND RIGHT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u');