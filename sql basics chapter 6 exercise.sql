##1. Show all the movies with their language names
select m.title,l.name from movies m inner join languages l on m.language_id=l.language_id;
select m.title,l.name from movies m inner join languages l using(language_id);

##2. Show all Telugu movie names (assuming you don't know the language id for Telugu)
select m.title,l.name from movies m left join languages l using (language_id)
where l.name="telugu";

##3. Show the language and number of movies released in that language
select l.name,count(m.title) as count from movies m left join languages l using (language_id) 
group by l.name
order by count desc