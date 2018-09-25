CREATE TABLE customers (
    id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL UNIQUE,
    address CHAR,
    salary DECIMAL(18, 2),
    PRIMARY KEY (id)
);

ALTER TABLE customers 
    MODIFY age INT NOT NULL UNIQUE;
    
ALTER TABLE customers 
    ADD CONSTRAINT myUniqueConstraint UNIQUE(age, salary);
    
ALTER TABLE customers 
    DROP CONSTRAINT myUniqueConstraint;
    
-- for mySQL
ALTER TABLE customers
    DROP INDEX myUniqueConstraint;