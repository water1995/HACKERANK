/*https://platform.stratascratch.com/coding-question?id=10308&python=*/

select abs(mark.msalary - eng.esalary) as diff
from (select max(salary) as msalary
      from db_employee as e
      join db_dept as dpt
      on e.department_id = dpt.id
      where dpt.department = 'marketing') as mark,
      (select max(salary) as esalary
      from db_employee as e
      join db_dept as dpt
      on e.department_id = dpt.id
      where dpt.department = 'engineering') as eng;

           



