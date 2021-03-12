/*https://platform.stratascratch.com/coding-question?id=10087&python=*/

select distinct p.* from facebook_posts p
join facebook_reactions r
on p.post_id = r.post_id
where r.reaction = 'heart';