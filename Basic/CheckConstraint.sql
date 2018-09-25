CREATE TABLE customers (
    id  INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL (age >= 18),
    address CHAR(25),
    salary DECIMAL(18, 2),
    PRIMARY KEY(id)
);

ALTER TABLE customers
    MODIFY age INT NOT NULL CHECK (age >= 18);
    
ALTER TABLE customers
    ADD CONSTRAINT myCheckConstraint CHECK(age >= 18);
    
ALTER TABLE customers
    DROP CONSTRAINT myCheckConstraint;