##co releated Subquery
explain analyze
select actor_id,name,
(select count(movie_id) from movie_actor
where actor_id=actors.actor_id) as count
from actors
group by actor_id
order by count desc


 