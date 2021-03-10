/*https://platform.stratascratch.com/coding-question?id=10309&python=


1)Campaign doesn't start until one day after the initial in app purchase
2)Users that order multiple products on same day and purchase one of those products in future

Not to include:
1)Users that make multiple purchases on same day
2)Users that make only same purchase overtime
*/

with countu as(select user_id,created_at
from marketing_campaign
group by user_id,created_at
having count(distinct(product_id))  < 2
order by user_id
),
counto as(select user_id
from marketing_campaign
group by user_id
having count(distinct(product_id)) <> count(product_id)
order by user_id
)
select (count(u.user_id)+count(o.user_id)) as count from countu u
join counto o
on u.user_id = o.user_id;

select count(user_id) from 
(select 
user_id,
count(distinct created_at) as trans,
count(distinct product_id) as prod
from marketing_campaign
group by 1)a
where trans !=1 and prod !=1;