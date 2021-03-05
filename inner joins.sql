-- Select * from orders
-- join customers on orders.customer_id = customers.customer_id

-- Select order_id, orders.customer_id, first_name, last_name
-- from orders
-- join customers on orders.customer_id = customers.customer_id

Select order_id, oi.product_id, quantity, oi.unit_price 
from order_items oi
join products on oi.product_id = products.product_id


