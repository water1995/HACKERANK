/*https://platform.stratascratch.com/coding-question?id=9913&python=*/

select first_name,order_date,order_details,order_cost
from customers c
join orders o
on c.id = o.cust_id
where first_name = 'Jill' or first_name = 'Eva'
order by c.id;