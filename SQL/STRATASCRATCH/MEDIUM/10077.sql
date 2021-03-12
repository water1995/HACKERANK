/*https://platform.stratascratch.com/coding-question?id=10077&python=*/

select employee_title,sex,avg(salary+b.bb)
from sf_employee e
join (select worker_ref_id,sum(bonus) bb from sf_bonus group by worker_ref_id) b
on e.id = b.worker_ref_id
group by employee_title,sex;