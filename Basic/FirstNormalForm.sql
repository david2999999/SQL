CREATE TABLE customers (
    id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    address CHAR(25),
    PRIMARY KEY(id)
);

CREATE TABLE orders (
    id INT NOT NULL,
    customer_id NOT NULL REFERENCES customers(id),
    orders VARCHAR(155),
    PRIMARY KEY (id)
);