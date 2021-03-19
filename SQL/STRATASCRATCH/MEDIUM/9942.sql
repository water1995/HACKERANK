/*https://platform.stratascratch.com/coding-question?id=9942&python=*/


select games,count(distinct(id)) as atheletes_count
from olympics_athletes_events
group by games
order by atheletes_count desc
limit 1;