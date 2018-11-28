-- The FULL OUTER JOIN keyword returns all rows from the left table (table1) and from the right
-- table (table2). It combines the results from LEFT JOINS and RIGHT JOINS. 

-- This instruction shows all customers' name and the code of orders simultaneously for all
-- customers and orders. The result is ordered by the customers' name.
SELECT c.name, O.COD_ORDER
FROM Customers C
FULL OUTER JOIN Orders O
    ON C.cod_customer=O.cod_customer
ORDER BY C.Name;

-- The above script works well for Oracle and SQL Server databases. However, we don't have
-- FULL JOINS on MySQL, but we can sure emulate them. Attending the above example we can do
-- that in MySQL by adopted the approach below.
SELECT c.name, o.cod_order
FROM Customers C
LEFT JOIN Orders O ON C.cod_customer = O.cod_customer
UNION
SELECT c.name, o.cod_order
FROM Customers C
RIGHT JOIN Orders O ON C.cod_customer = O.cod_customer;