-- The ALL is used to select all records of a SELECT statement. It compares a value to every value
-- in a list or results from a query. The ALL must be preceded by the comparison operators and
-- evaluates to TRUE if the query returns no rows


-- This instruction shows the description and available stock of products which unit price is
-- higher than price of all products in the database. The "=" signal is used to guarantee that it
-- returns the correct field and match at least one record.
Select description, available_stock
From Products
Where unit_price >= ALL (select distinct unit_price
                         From Products);
