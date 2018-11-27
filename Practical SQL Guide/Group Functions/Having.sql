-- This instruction is very similar to previous and it only adds an additional last line. The "Having"
-- clause only shows lines where the sum of quantity is higher than 10.

Select O.cod_customer, O.cod_order, sum(quantity), count(cod_product)
    From Orders O, OrdersProducts OP
    Where O.COD_ORDER = OP.COD_ORDER
    Group By O.cod_customer, O.cod_order
    Having sum(quantity) > 10;