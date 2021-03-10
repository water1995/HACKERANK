/*https://platform.stratascratch.com/coding-question?id=10288&python=*/

select SUM(CASE WHEN position<=3 THEN 1 ELSE 0 END) *100.0 / COUNT(*) as percentage from fb_search_results;