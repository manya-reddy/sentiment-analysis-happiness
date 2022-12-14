#1. How is the happiness index in the top 3 countries of Highest GDP? 

SELECT
t1.happiness_score, t2.country_name, t3.year_2021
FROM happiness t1
INNER JOIN
country t2 ON t1.country_code = t2.country_code
INNER JOIN
gdp t3 ON t3.country_code = t1.country_code 
order by t3.year_2021 desc
limit 3;

#2. Which are the countries with top 3 internet usage?
SELECT t2.country_name, t1.country_code, t1.internet_rate
FROM internet t1
INNER JOIN country t2 ON t2.country_code = t1.country_code
order by t1.internet_rate desc
limit 3;

#3. Average internet usage of all countries with 200 > gallons of beer capita
select avg(t2.internet_rate) as "Average Internet Usage"
from alchappiness t1
join internet t2 on t1.country_code=t2.country_code
where t1.beer_capita>200;

#4. Average crime rate of highest 3 gdp countries ranking and 3 
(select avg(crime_index) from 
(select cr.crime_index
from country c
join gdp g on c.country_code=g.country_code
join crime cr on cr.country_code=c.country_code
order by year_2020 desc
limit 3 ) as t1)
union all
(select avg(crime_index) from 
(select cr.crime_index
from country c
join gdp g on c.country_code=g.country_code
join crime cr on cr.country_code=c.country_code
order by year_2020 asc
limit 3) as t2);


#5. Which countries have the highest crime rate and what is their happiness index? 
SELECT
t1.happiness_score, t2.country_name, t3.crime_index
FROM happiness t1
INNER JOIN
country t2 ON t1.country_code = t2.country_code
INNER JOIN
crime t3 ON t3.country_code = t1.country_code 
order by t3.crime_index desc
limit 3;

#6. Top 150 universities located at high gdp countries 

select u.uni_name, c.country_name, g.year_2021
from gdp g
join country c on c.country_code=g.country_code
join universities u on c.country_code=u.country_code
order by year_2021 desc
limit 150;

#7. Top 3 countries have the most gold medals in 1996 and hows the happiness index in those countries

select c.country_name, m.year, m.gold
from medals m
join country c on c.country_code=m.country_code
where year=1996
order by gold desc
limit 3;



#8. Top 3 countries have the highest crime rate with alcohol beer_capita consumption>200 gallons

select com.country_name, c.crime_index, a.beer_capita
from crime c
join alchappiness a on a.country_code=c.country_code
join country com on com.country_code=c.country_code
where a.beer_capita>200
order by crime_index Desc
limit 3;

#9. Internet usage of highest gdp countries?

select c.country_name, g.year_2021 as gdp_2021, i.internet_rate
from gdp g
join internet i on i.country_code=g.country_code
join country c on c.country_code=g.country_code
order by year_2021
limit 3;

#10. What countries have won gold medals since 1995 and how’s their GDP in 2021? 
select c.country_name, m.gold, g.year_2020 as "GDP 2020"
from medals m
join gdp g on g.country_code=m.country_code
join country c on c.country_code=m.country_code
where gold>0 AND year>1995;
