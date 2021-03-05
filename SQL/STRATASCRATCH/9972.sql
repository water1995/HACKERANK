/*https://platform.stratascratch.com/coding-question?id=9972&python=*/

select employeename,max(basepay) from sf_public_salaries
where jobtitle ilike '%Captain%Police%'
group by employeename;