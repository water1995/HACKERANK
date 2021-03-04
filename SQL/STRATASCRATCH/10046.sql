/*https://platform.stratascratch.com/coding-question?id=10046&python=*/

select state,count(*) as cstars
from yelp_business
where stars = 5
group by state
order by cstars desc ,state
limit 5;