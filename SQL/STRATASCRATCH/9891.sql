/*https://platform.stratascratch.com/coding-question?id=9891&python=*/

select first_name,last_name,city,order_details
from customers c left join orders o
on c.id = o.cust_id;