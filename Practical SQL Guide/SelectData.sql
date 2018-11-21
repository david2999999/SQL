Select * From Customers;

Select Name, Country From Customers;

Select distinct Country From Customers;

Select *
From Products
Where Available_stock is not NULL;

Select *
From Products
Where (Available_stock is NULL and unit_price > 1.00) or minimal_stock > 0;

Select O.cod_order, O.date_order, O.DATE_DELIVERY, C.name
From Orders O, Customers C
Where O.cod_customer = C.COD_CUSTOMER;


Select OP.COD_PRODUCT, OP.QUANTITY, C.name
From Orders O, Customers C, OrdersProducts OP
Where O.cod_customer = C.COD_CUSTOMER
    and O.COD_ORDER = OP.COD_ORDER
    and O.COD_ORDER = 3;

select cod_product, description, available_stock - minimal_stock as marginStock
From Products;


select cod_product, description, mod(available_stock, minimal_stock) as modResult
From Products;
