-- This instruction presents the description of the product which has the maximum unit price.
Select description
From Products
Where unit_price = (Select max(unit_price)
                    From Products);
                    
-- This instruction presents the name of customer which code of customer is maximum (most
-- recent) and has an order which date of delivery is equal or more recent than 26th December 2015
Select name
From Customers
Where cod_customer = (Select max(distinct cod_customer)
                     From Orders
                     Where date_delivery >= '2015-12-26');
                     
-- This instruction presents the delivery date of the last order saved in the database that has an
-- item quantity higher than 3.
Select date_delivery
From Orders
Where cod_order = (Select max(cod_order)
                     From OrdersProducts
                     Where quantity > 3);