CREATE TABLE customers (
    id  INT NOT NULL,
    name VARCHAR (20) NOT NULL,
    age INT NOT NULL,
    address CHAR(25),
    salary DECIMAL (18, 2),
    PRIMARY KEY (id)
);

CREATE INDEX index_name 
    ON table_name (column1, column2);
    
CREATE INDEX index_age
    ON customers(age);
    
ALTER TABLE customers
    DROP INDEX idx_age;