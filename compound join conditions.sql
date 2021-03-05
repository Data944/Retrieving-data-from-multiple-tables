select * from sql_store.order_items;
select * 
from order_items oi
join order_items_notes oin
on oi.order_id = oin.order_id
and oi.product_id = oin.product_id
