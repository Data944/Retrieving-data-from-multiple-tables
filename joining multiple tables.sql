-- use sql_store;

-- select * from orders o
-- join customers c
-- on o.customer_id = c.customer_id
-- join order_statuses os
-- on o.status = os.order_status_id

select 
o.order_id, (o for orders table)
o.order_date,
c.first_name,
c.last_name,
os.name as status
from orders o
join customers c
on o.customer_id = c.customer_id
join order_statuses os
on o.status = os.order_status_id


 use sql_invoicing;


 Select * from payments p
join clients c
 on p.client_id = c.client_id
Join payment_methods pm
on p.payment_method = pm.payment_method_id

Select 
p.date,
p.invoice_id,
p.amount,
c.name,
pm.name
from payments p
join clients c
on p.client_id = c.client_id
Join payment_methods pm
on p.payment_method = pm.payment_method_id








