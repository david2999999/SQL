CREATE TABLE ADDRESS (
    zip VARCHAR(12),
    street VARCHAR(200),
    city VARCHAR(100),
    state VARCHAR(100),
    PRIMARY KEY(zip)
);

CREATE TABLE customers (
    cust_id INT NOT NULL,
    cust_name VARCHAR(20) NOT NULL,
    DOB DATE,
    zip VARCHAR(12) REFERENCES address(zip),
    email_id VARCHAR(256),
    PRIMARY KEY (cust_id)
);