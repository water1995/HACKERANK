/*https://platform.stratascratch.com/coding-question?id=9992&python=*/

select artist,count(artist) as c
from spotify_worldwide_daily_song_ranking
group by artist
order by c desc;