-- join = inner join, left or right join = outer joins

Select 
c.customer_id,
c.first_name,
o.order_id
from customers c
join orders o
on c.customer_id = o.customer_id
order by c.customer_id

Select 
c.customer_id,
c.first_name,
o.order_id
from customers c
right join orders o
on c.customer_id = o.customer_id
order by c.customer_id

Select 
c.customer_id,
c.first_name,
o.order_id
from customers c
left join orders o
on c.customer_id = o.customer_id
order by c.customer_id

Select
p.product_id,
p.name,
oi.quantity
from products p
left join order_items oi
on oi.product_id = p.product_id
order by p.product_id