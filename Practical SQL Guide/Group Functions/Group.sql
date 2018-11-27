-- This instruction selects the number of orders recorded in the system for each customer.
Select cod_customer, count(cod_customer) as nOrders
From Orders
Group By cod_customer;


-- This instruction shows for each customer and order, the total quantity of itens and the number
-- of products. To perform this operation there is a grouping by code of customer and code of
-- order.
select O.cod_customer, O.cod_order, sum(quantity), count(cod_product)
From Orders O, OrdersProducts OP
Where O.COD_ORDER = OP.COD_ORDER
Group By O.cod_customer, O.cod_order;
