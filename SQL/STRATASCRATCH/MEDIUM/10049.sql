/*https://platform.stratascratch.com/coding-question?id=10049&python=*/

select unnest(string_to_array(categories,';')) as category,sum(review_count) as total
from yelp_business
group by category
order by total desc;