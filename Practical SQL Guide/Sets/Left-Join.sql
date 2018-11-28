-- The LEFT JOIN keyword returns all rows from the left table (table1), with the matching rows in
-- the right table (table2). The result is NULL in the right side when there is no match

-- This instruction shows all the customers' name and country that have orders or not. Using the
-- LEFT JOIN syntax we show all elements from the first table.
SELECT distinct C.Name, C.country
FROM Customers C
LEFT JOIN Orders O
    ON C.cod_customer=O.cod_customer
ORDER BY c.Name;