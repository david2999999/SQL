-- This instruction returns simultaneously the upper name and lower name of customers name.
-- the statement for MySQL
Select UCASE(name) as UPPERName, LCASE(name) as LOWERName
from Customers;

-- This instruction returns simultaneously the upper name and lower name of customers name.
-- The statement for SQL Server and Oracle can be the same.
Select UPPER(name) as UPPERName, LOWER(name) as LOWERName
from Customers;

-- This instruction shows all the customers' name and for each name presents its size.
--  SQL Server database.
Select name, LEN(name) as SizeName
from Customers;

-- In MySQL and Oracle databases we must replace the "LEN()" function by the "LENGTH()" function.
-- This instruction shows all the customers' name and for each name presents its size.
Select name, LENGTH(name) as SizeName
from Customers;

-- This instruction shows for each product three prices. The first one without any decimal place,
-- the second column with one decimal place, and the third column with two decimal places.
Select description, round(unit_price, 0) as RPrice0,
 round(unit_price, 1) as RPrice1,
 round(unit_price, 2) as RPrice2
From Products;