-- This instruction returns the highest unit price of all products.
SELECT MAX(unit_price) AS HighestPrice FROM Products;


-- This instruction returns the highest unit price and the average price of all products.
SELECT MAX(unit_price) AS HighestPrice, AVG(unit_price) AS AveragePrice
FROM Products;
