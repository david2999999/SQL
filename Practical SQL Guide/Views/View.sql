-- In SQL, a view is a virtual table based on the result-set of an SQL statement. A view contains
-- rows and columns, just like a real table. The fields in a view are fields from one or more real
-- tables in the database. An example creating a view is given a below

-- This instruction creates a view with all code of products and description which stock is below
-- the established minimal stock
Create view Products_BelowStockMin as
Select cod_product, description
From products
Where available_stock < minimal_stock

-- This instruction shows all field of the view "Products_BelowStockMin".
Select * from Products_BelowStockMin

-- This instruction creates a view with the description and unit price of all products that have
-- orders submitted. The products in this view are inversed ordered by unit price
Create view descProductsOrders as
Select distinct description, unit_price
From products p, ordersproducts op
Where p.cod_product = op.cod_product
order by unit_price DESC

