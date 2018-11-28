-- The SQL INTERSECT operator is used to return the results of 2 or more SELECT statements.
-- However, it only returns the rows selected by all queries or data sets. If a record exists in one
-- query and not in the other, it will be omitted from the INTERSECT results. An example of such
-- situation is given below. The script below only works in SQL Server and Oracle databases.


-- This instruction shows the description of all products which product code is higher than 3 or
-- higher than 1. However, and comparing to previous example, the records returned by both
-- queries are duplicated.
Select description
From Products
Where cod_product > 3
INTERSECT
Select description
From Products
Where cod_product > 1;


-- The INTERSECT operator isn't supported in MySQL. To make a similar function in MySQL we
-- can use the "IN", "EXISTS" or arithmetic operators. In our previous example we can reach the
-- same functionality by using simple arithmetic operators. An example of this approach is given
-- below.


-- This instruction shows the description of all products which product code is higher than 3 or
-- higher than 1. It uses only arithmetic and boolean operations. 
Select description
From Products
Where cod_product > 3 and cod_product > 1;
