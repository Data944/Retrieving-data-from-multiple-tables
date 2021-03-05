use sql_store;

Select 
o.order_id,
c.first_name
from orders o
natural join customers c
-- natural joins allow database to join columns with same name in different tables
-- natural joins not recommended as MySQL automates join vs you having control
