/*https://platform.stratascratch.com/coding-question?id=9905&python=*/

select first_name,target
from salesforce_employees
where manager_id = 13
and target = (select max(target)
from salesforce_employees
where manager_id = 13
);