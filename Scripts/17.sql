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


--x

SELECT
    distinct (CITY)
FROM
    STATION
WHERE
    (MOD(ID, 2) = 0);