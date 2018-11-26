-- This instruction returns the average of unit price of all products.
Select AVG(unit_price) From Products;

-- This instruction returns the average of unit price of all products with 2 decimal places. This is
-- done using the "ROUND" function.
Select ROUND(AVG(unit_price),2) From Products;

-- This instruction shows the description, unit price and available stock of all products which unit
-- price is higher than the unit price average of all products in the database.
SELECT description, unit_price, available_stock
FROM Products
WHERE unit_price>(SELECT AVG(unit_price) FROM Products);