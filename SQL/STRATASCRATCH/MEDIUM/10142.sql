/*https://platform.stratascratch.com/coding-question?id=10142&python=*/

select c.first_name
from customers c
where c.id not in
(select o.cust_id from  orders o where order_date between '2019-02-01' and '2019-03-01');