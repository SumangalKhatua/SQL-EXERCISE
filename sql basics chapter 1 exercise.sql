##1 Print all movie titles and release year for all Marvel Studios movies.
select title,release_year from movies
where studio = "marvel studios";

##2. Print all movies that have Avenger in their name.
select * from movies
where title like "%avenger%";

##3. Print the year when the movie "The Godfather" was released.
select release_year from movies
where  title = "The Godfather";

##4. Print all distinct movie studios in the Bollywood industry.
select distinct studio from movies 
where industry = "bollywood";