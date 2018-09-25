CREATE TABLE orders (
    id  INT NOT NULL,
    data DATETIME,
    customer_id INT REFERENCES customers(id),
    amount double,
    primary key(id)
);

ALTER TABLE orders 
    ADD FOREIGN KEY (customer_id) REFERENCES customers(id);
    
ALTER TABLE orders
    DROP FOREIGN KEY;
    
    
    