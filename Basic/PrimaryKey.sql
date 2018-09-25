CREATE TABLE customers (
    id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    address CHAR(25),
    salary DECIMAL(18, 2),
    PRIMARY KEY (ID)
);

ALTER TABLE customers ADD PRIMARY KEY (id);

CREATE TABLE customers (
    id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    address CHAR(25),
    salary DECIMAL(18, 2),
    PRIMARY KEY (id, name)
);

ALTER TABLE customers 
    ADD CONSTRAINT pk_custid PRIMARY KEY (id, name);
    
    
ALTER TABLE customers DROP PRIMARY KEY;