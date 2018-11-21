Delete From OrdersProducts
Where cod_product = 5;

Delete From OrdersProducts
Where cod_order IN
     (Select cod_order
     From Orders
     Where cod_customer = 3);
     
     
Delete From OrdersProducts
Where cod_product IN
     (Select cod_product
     From Products
     Where description is NULL);