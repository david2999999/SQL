-- This operation shows all customers that already have orders in the table. The operator
-- "EXISTS" is used to retrieve the customers code of all customers that have orders.
SELECT *
FROM Customers C
WHERE EXISTS (SELECT cod_customer
             FROM Orders O
             WHERE C.cod_customer = O.cod_customer);
             
-- This instruction shows all distinct countries which there are no orders in the database.
SELECT distinct Country
FROM Customers C
WHERE NOT EXISTS (SELECT cod_customer
                 FROM Orders O
                 WHERE C.cod_customer = O.cod_customer);
