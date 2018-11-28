-- The SQL MINUS clause is used to combine two SELECT statements and returns rows from the
-- first SELECT statement that are not returned by the second SELECT statement. An example of
-- this situation is given below. This script only works in Oracle.

-- This instruction shows the description of all products that have a product code higher than 1
-- but below or equal to 3.
Select description
From Products
Where cod_product > 1
MINUS
Select description
From Products
Where cod_product > 3;


-- To make the previous script working in SQL Server we must use the clause "EXCEPT".

-- This instruction shows the description of all products that have a product code higher than 1
-- but below or equal to 3.
Select description
From Products
Where cod_product > 1
EXCEPT
Select description
From Products
Where cod_product > 3;


-- To make the script work in MySQL we must adopt a similar approach like we did in
-- "INTERSECT" clause. An example of this approach is given below.

-- This instruction shows the description of all products that have a product code higher than 1
-- but below or equal to 3.
Select description
From Products
Where cod_product > 1 and cod_product <= 3;