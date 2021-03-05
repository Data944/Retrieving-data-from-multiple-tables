Select *
from customers c
cross join  products p
-- cross join joins every record in first table with every record in second table

Select
 c.first_name as customer,
 p. name as product
from customers c
cross join  products p
order by c.first_name
-- also joins every value in each columns across tables

Select * 
from products p, shippers sh
-- implicit  cross join

Select * from products p
cross join shippers sh
-- explicit cross join

