-- unions join multiple rows of data
Select 
order_id, 
order_date,
'active' as status
 from orders
where order_date >= '2019-01-01'
union
Select 
order_id, 
order_date,
'archived' as status
 from orders
where order_date <= '2019-01-01'

use sql_store;

Select 
customer_id,
first_name,
points,
'Bronze' as type
from customers
where points < 2000
union
Select 
customer_id,
first_name,
points,
'silver' as type
from customers
where points between 2000 and 3000
union
Select 
customer_id,
first_name,
points,
'Gold' as type
from customers
where points > 3000
order by first_name