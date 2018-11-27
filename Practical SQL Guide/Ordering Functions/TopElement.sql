-- This instruction shows all fields of Customers table ordered by name. However, it only shows
-- the first three records
SELECT *
FROM Customers
Order By Name
Limit 3;

-- This instruction shows all fields of Customers table ordered by name. However, it only shows
-- the first three records
-- In SQL Server it is possible to perform this operation using the syntax below.
SELECT Top 3 *
FROM Customers
Order By Name;


-- This instruction shows all fields of Customers table ordered by name. However, it only shows
-- the first three records.
-- Finally, in Oracle the same operation can be done using the syntax below.
SELECT *
FROM Customers
Where RowNum <= 3
Order By Name;