CREATE TABLE customers(
    cust_id INT NOT NULL,
    cust_name VARCHAR (20) NOT NULL,
    PRIMARY KEY (cust_id)
);

CREATE TABLE orders (
    order_id INT NOT NULL,
    order_detail VARCHAR(20) NOT NULL,
    PRIMARY KEY (order_id)
);

CREATE TABLE customer_orders (
    cust_id INT NOT NULL REFERENCES customers(cust_id),
    order_id INT NOT NULL REFERENCES orders(order_id),
    sale_date DATETIME,
    PRIMARY KEY (cust_id, order_id)
);