-- This instruction returns the sum of available stock for all products.
SELECT SUM(available_stock) AS TotalStock FROM Products;

-- This instruction returns simultaneously the total number of products, average price, highest
-- price, smallest price and total stock.
SELECT COUNT(*) as TotalProducts,
 AVG(unit_price) AS AveragePrice,
 MAX(unit_price) AS HighestPrice,
 MIN(unit_price) AS SmallestPrice,
 SUM(available_stock) AS TotalStock
FROM Products;