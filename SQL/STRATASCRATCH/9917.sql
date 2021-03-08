/*https://platform.stratascratch.com/coding-question?id=9917&python=*/

with average as (
select department,avg(salary) as average
from employee
group by department)

select e.department,e.first_name,e.salary,a.average 
from employee e join average a
on e.department = a.department;

select department,first_name,salary,avg(salary) over(partition by department)
from employee;