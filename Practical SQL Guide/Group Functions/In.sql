-- This operation shows all fields of records in table Orders with order code equal to "1" or "3" or "5".
SELECT *
FROM Orders
WHERE cod_order IN (1, 3, 5);

-- This operation shows all fields of records in table Customers with name equal to "Peter" or "Elena"
SELECT *
FROM Customers
WHERE name IN ('Peter', 'Elena');

-- This operation shows all customers that already have orders in the table. The operator "IN" is
-- used to retrieve several values from Orders table.
SELECT *
FROM Customers
WHERE cod_customer IN (SELECT cod_customer
                         From Orders);
 