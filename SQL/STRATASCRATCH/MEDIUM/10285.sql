/*https://platform.stratascratch.com/coding-question?id=10285&python=*/

select a.date,count(b.user_id_receiver)/count(a.user_id_sender)::float as percentage_acceptance
from(select date,user_id_sender,user_id_receiver from fb_friend_requests where action = 'sent') a
left join (select date,user_id_sender,user_id_receiver from fb_friend_requests where action = 'accepted') b
on a.user_id_sender = b.user_id_sender and a.user_id_receiver = b.user_id_receiver
group by a.date;