use sql_store;

select * 
from orders o
join customers c
on o.customer_id = c.customer_id

--implicit join syntax( not preferred, can lead to syntax error)
-- select * from orders o, customers c
-- where o.customer_id = c.customer_id

--explicit join syntax (preferred method)
select * from orders o
join customers c
on o.customer_id = c.customer_id



