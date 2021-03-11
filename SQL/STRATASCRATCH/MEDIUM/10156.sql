/*https://platform.stratascratch.com/coding-question?id=10156&python=*/

select nationality,count(apartment_id) apartments
from airbnb_hosts h
left join airbnb_apartments a
on h.host_id = a.host_id
where age < 30
group by nationality
order by apartments desc;