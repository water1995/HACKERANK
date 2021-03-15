/*https://platform.stratascratch.com/coding-question?id=10064&python=*/

with data as(
    select date,consumption from fb_eu_energy
    union all
    select date,consumption from fb_asia_energy
    union all
    select date,consumption from fb_na_energy
),
max_data as(
select date,sum(consumption) con
from data
group by date)
select date,con from max_data where con in (select max(con) from max_data);