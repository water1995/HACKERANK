/*https://platform.stratascratch.com/coding-question?id=9991&python=*/

select trackname,count(position) count
from spotify_worldwide_daily_song_ranking
where position = 1
group by trackname
order by count desc;

