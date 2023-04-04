select *,year(curdate()) as current_year,
year(curdate()) - birth_year as Age from actors

select * from financials;
##1. Print profit % for all the movies
select *,
revenue-budget ,
round(((revenue-budget)/revenue * 100),2)
from financials