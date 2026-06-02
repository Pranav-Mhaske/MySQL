-- To add comments in SQL, we can use the double dash (--).

-- Create Database
CREATE DATABASE sales;

-- Use DAtabase
Use sales;

-- Create Table
CREATE TABLE stores
(
	store_id INT,
    store_name VARCHAR(200)
);

-- Insert Some Records
INSERT INTO stores
VALUES
(1,"store_xyz"),
(2,"store_abc");

-- This will work because there is no NOT NULL constraint on store_name
INSERT INTO stores(store_id)
VALUES
(3);

-- Create Table with Constraints
CREATE TABLE stores_new
(
	store_id INT UNIQUE, -- UNIQUE constraint ensures that all values in the column are different.
    store_name VARCHAR(200) NOT NULL -- NOT NULL constraint ensures that the column cannot have NULL values.
);

-- Insert Some Data into stores_new
INSERT INTO stores_new
VALUES
(1,"store_xyz"),
(2,"store_abc"),
(3,"store_pqr");

-- Will not work because of the NOT NULL constraint on store_name
INSERT INTO stores_new(store_id)
VALUES
(4);

-- ALTER COMMAND
ALTER TABLE stores_new
ADD COLUMN store_city VARCHAR(200);
RENAME COLUMN store_city to store_location;


--Drop command
DROP TABLE stores; -- This will delete the entire table and all its data.

--Truncate command
TRUNCATE TABLE stores_new; -- This will delete all the data in the table but keep the structure of the table intact. 

