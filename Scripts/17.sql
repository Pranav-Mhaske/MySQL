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

--x
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u')
  AND RIGHT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u');