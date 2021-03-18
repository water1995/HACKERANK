/*https://platform.stratascratch.com/coding-question?id=10048&python=*/

select name,review_count as review_count
from yelp_business
order by review_count desc
limit 5;