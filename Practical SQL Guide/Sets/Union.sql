-- The UNION operator is used to combine the result-set of two or more SELECT statements. The
-- SELECT statement within the UNION must have the same number of columns and have similar
-- or compatible data types. 


-- This instruction shows the description of all products which product code is higher than 3 or
-- higher than 1. The UNION statement let join the results of both SQL statements.
Select description
From Products
Where cod_product > 3
UNION
Select description
From Products
Where cod_product > 1;


-- This instruction shows the description of all products which product code is higher than 3 or
-- higher than 1. However, and comparing to previous example, the records returned by both
-- queries are duplicated.
Select description
From Products
Where cod_product > 3
UNION ALL
Select description
From Products
Where cod_product > 1;