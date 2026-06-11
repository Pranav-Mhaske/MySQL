-- DML COMMANDS

-- INSERT COMMAND
INSERT INTO customers (name, email)
VALUES ('John Doe', 'john.doe@example.com');

-- UPDATE COMMAND
UPDATE customers
SET name = 'sam'
WHERE email = 'aa';


-- DELETE COMMAND
DELETE FROM customers 
WHERE email = 'aa';

SELECT * FROM customers