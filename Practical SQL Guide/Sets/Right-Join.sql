-- The RIGHT JOIN keyword returns all rows from the right table (table2), with the matching rows
-- in the left table (table1). The result is NULL in the left side when there is no match.


-- This instruction shows all the date orders and customers names of all orders, and it also
-- includes the name of customers that don't have any order. This is done using the RIGHT JOIN
-- clause. Finally all elements are ordered by their date.
SELECT distinct O.date_order, C.name
FROM Orders O
RIGHT JOIN Customers C
    ON O.cod_customer=C.cod_customer
ORDER BY O.date_order;
