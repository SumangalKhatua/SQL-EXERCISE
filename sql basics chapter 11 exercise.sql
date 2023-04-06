explain analyze
select a.actor_id,a.name,count(ma.movie_id) as movies_count from actors a
left join movie_actor ma
using (actor_id)
group by actor_id
order by movies_count desc