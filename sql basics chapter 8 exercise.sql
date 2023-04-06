##1. Generate a report of all Hindi movies sorted by their revenue amount in millions.
##Print movie name, revenue, currency, and unit

select m.title,
case
when unit='Billions' then round(revenue*1000,2)
when unit="thousands" then round(revenue/1000,2)
else revenue
end as "revenue in millions",f.revenue
,f.currency,f.unit from movies m
inner join languages l
using (language_id)
inner join financials f
on m.movie_id=f.movie_id
where l.name="hindi" 