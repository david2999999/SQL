SELECT * FROM customers WHERE age >= 25 AND salary >= 6500;

SELECT * FROM customers WHERE age >= 25 OR salary >= 6500;

SELECT * FROM customers WHERE age IS NOT NULL;

SELECT * FROM customers WHERE name LIKE 'Ko%';

SELECT * FROM customers WHERE age IN (25, 27);

SELECT * FROM customers WHERE age BETWEEN 25 AND 27;

SELECT age FROM customers
    WHERE EXISTS (SELECT age FROM customers WHERE salary > 6500);
    
SELECT * FROM customers 
    WHERE age > ALL (SELECT age FROM customers WHERE salary > 6500);
    
SELECT * FROM customers
    WHERE age > ANY (SELECT age FROM customers WHERE salary > 6500);
    
