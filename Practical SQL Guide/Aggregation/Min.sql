-- This instruction returns the smallest unit price of all products.
SELECT MIN(unit_price) AS SmallestPrice FROM Products;

-- This instruction returns the smallest unit price and the average price of all products.
SELECT MIN(unit_price) AS SmallestPrice, AVG(unit_price) AS AveragePrice
FROM Products;

