## subquery return a single value

select * from movies 
where imdb_rating = (
select max(imdb_rating) from movies);


select max(imdb_rating) from movies;

select * from movies
order by imdb_rating desc
limit 1;

##subquery returns a list of values
select * from movies 
where imdb_rating in ((select max(imdb_rating) from movies),
(select min(imdb_rating) from movies));


select max(imdb_rating) from movies;
select min(imdb_rating) from movies;

##subquery return a table

select * from (select name,year(curdate())- birth_year as age from actors) as Actor_Age_table
where age > 70 and age <85;


select name,year(curdate())- birth_year as age from actors;