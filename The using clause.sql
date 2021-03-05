use sql_store;
-- using clause works if column name same across different tables
select *
from orders o
join customers c
on o.customer_id = c.customer_id

select 
o.order_id,
c.first_name
from orders o
join customers c
on o.customer_id = c.customer_id

select 
o.order_id,
c.first_name
from orders o
join customers c
-- on o.customer_id = c.customer_id
using (customer_id)

select 
o.order_id,
c.first_name,
sh.name as shipper
from orders o
join customers c
-- on o.customer_id = c.customer_id
using (customer_id)
left join shippers sh -- include those withhout shippers
using (shipper_id)

Select * from order_items oi
join order_items_notes oin
-- on oi.order_id = oin.order_id
-- and oi.product_id = oin.product_id
using (order_id, product_id)


use sql_invoicing;

Select 
p.date,
c.name as client,
p.amount,
pm.name
from payments p
join clients c using (client_id)
join  payment_methods pm
on p.payment_id = pm.payment_method_id