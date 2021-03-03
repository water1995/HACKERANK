/*https://platform.stratascratch.com/coding-question?id=10061&python=*/

select location, avg(popularity) as average_popularity
from facebook_employees as fe
join facebook_hack_survey as fs
on fe.id = fs.employee_id
group by fe.location;