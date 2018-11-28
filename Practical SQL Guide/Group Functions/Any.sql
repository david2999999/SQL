-- The operator "ANY" compares a value to each value in a list or results from a query and
-- evaluates to true if the result of an inner query contains at least one row. A simple example
-- using the "ANY" operator is given below

-- This instruction shows the description of the products that has a quantity order equal to 1.
SELECT description
FROM Products
WHERE cod_product = ANY (SELECT cod_product
                         FROM OrdersProducts
                         WHERE Quantity = 1)

-- This instruction shows the description and available stock of products which available stock is
-- above any minimal stock of all products in database.
Select description, available_stock
From Products
Where available_stock >= ANY (Select distinct minimal_stock
                             From Products);

-- This instruction shows name and address of customers which code of customer is below than
-- any code of customer that has already orders
Select name, address
From Customers
Where cod_customer < ANY (Select cod_customer From Orders);