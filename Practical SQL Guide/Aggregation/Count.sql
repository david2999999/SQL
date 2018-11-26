-- This instruction returns the number of records in Customers table.
Select Count(*) From Customers;

-- This instruction returns the number of distinct countries in Customers table.
Select Count(distinct country) From Customers;

