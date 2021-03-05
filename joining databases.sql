use sql_store

 Select * from order_items oi
 join sql_inventory.products p
on oi.product_id = p.product_id

use sql_inventory;

Select * 
from sql_store.order_items oi
 join products p
on oi.product_id = p.product_id