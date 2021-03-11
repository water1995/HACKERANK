/*https://platform.stratascratch.com/coding-question?id=10159&python=*/



select dense_rank() over (order by sum(n_messages) desc) ranking,id_guest,sum(n_messages)
from airbnb_contacts
group by id_guest;