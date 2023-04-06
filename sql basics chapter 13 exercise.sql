##Select all Hollywood movies released after the year 2000 that made more than 500 million $ profit or more profit. 
##Note that all Hollywood movies have millions as a unit hence you don't need to do the unit conversion. 
##Also, you can write this query without CTE as well but you should try to write this using CTE only

with cte as (
select
m.title,revenue-budget as profit,release_year
 from movies m
join financials f
using (
movie_id)
where industry = "hollywood" and release_year > 2000 )
select * from cte where profit>500;


select
m.title,revenue-budget as profit,release_year
 from movies m
join financials f
using (
movie_id)
where industry = "hollywood" and release_year > 2000 and revenue-budget > 500;
