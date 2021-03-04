/*https://platform.stratascratch.com/coding-question?id=10026&python=*/

select distinct(winery)
from winemag_p1
where description ilike '%plum%'
OR description ilike '%cherry%' 
OR description ilike '%rose%' 
OR description ilike '%hazelnut%';