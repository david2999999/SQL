-- The INNER JOIN keyword selects all rows from both tables as long as there is a match between
-- the columns in both tables

-- This instruction shows all the customers' name and addresses that have orders. The inner join
-- elements are explicitly declared by the field customer code in both table. The final result is
-- order alphabetically by customer name
SELECT distinct C.Name, C.Address
FROM Customers C
INNER JOIN Orders O
    ON C.cod_customer=O.cod_customer
ORDER BY c.Name;

-- This instruction shows all the customers' name and addresses that have orders. Using the
-- NATURAL JOIN syntax we don't explicitly declare the join fields. The final result is order
-- alphabetically by customer name.
SELECT distinct C.Name, C.Address
FROM Customers C NATURAL JOIN Orders O
ORDER BY c.Name;


-- The above script only works for MySQL and Oracle databases. The SQL Server database doesn't
-- support the NATURAL JOIN clause. Instead of NATURAL JOIN we can easily use the INNER JOIN
-- as used previously.