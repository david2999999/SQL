create table Products
(
     cod_product integer,
     description varchar(50) NOT NULL,
     unit_price DECIMAL(10,2),
     available_stock integer,
     minimal_stock integer default 0,
     CONSTRAINT Products_pk PRIMARY KEY (cod_product)
);

create table Customers
(
     cod_customer integer,
     name varchar(50) NOT NULL,
     address varchar(95) Default 'Unknown',
     zip_code char(8),
     country varchar(40) Default 'Portugal',
     telephone varchar(15),
     CONSTRAINT Customers_pk PRIMARY KEY (cod_customer)
);

create table Orders
(
     cod_order integer,
     date_order date,
     date_delivery date,
     cod_customer integer,
     CONSTRAINT Orders_pk PRIMARY KEY (cod_customer),
     CONSTRAINT Orders_Cust_fk FOREIGN KEY (cod_customer)
     REFERENCES Customers(cod_customer)
);

create table OrdersProducts
(
     cod_product integer,
     cod_order integer,
     quantity decimal(2,0),
     CONSTRAINT OrdersProducts_pk PRIMARY KEY (cod_product, cod_order),
     CONSTRAINT OrdersProducts_Prod_fk FOREIGN KEY (cod_product)
     REFERENCES Products(cod_product),
     CONSTRAINT OrdersProducts_Orders_fk FOREIGN KEY (cod_order)
     REFERENCES Orders(cod_order)
);