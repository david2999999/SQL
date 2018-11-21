Update Products
Set unit_price = 1.99
Where description = 'Eggs';

Update Products
Set available_stock = 25, minimal_stock = 10
Where description = 'Eggs';

Update Products
Set unit_price = unit_price * 1.25
Where description = 'Soda';

Update Orders O, Customers C
Set O.date_delivery = '2015-12-29'
Where O.cod_customer = C.cod_customer and C.name='Peter';