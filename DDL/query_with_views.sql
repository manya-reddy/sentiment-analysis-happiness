#1. How is the happiness index in the top 3 countries of Highest GDP? 

SELECT happiness_score, country_name, year_2021
FROM country_happiness_gdp_crime
order by year_2021 desc
limit 3;

#2. Which are the countries with top 3 internet usage?
SELECT country_name, country_code, internet_rate
from alcohol_country_internet_crime
order by internet_rate desc
limit 3;

#3. Average internet usage of all countries with 200 > gallons of beer capita
select avg(internet_rate) as "Average Internet Usage"
from alcohol_country_internet_crime
where beer_capita>200;

#4. Average crime rate of highest 3 gdp countries ranking and 3 
(select avg(crime_index) from 
(select crime_index
from country_happiness_gdp_crime
order by year_2020 desc
limit 3 ) as t1)
union all
(select avg(crime_index) from 
(select crime_index
from country_happiness_gdp_crime
order by year_2020 asc
limit 3) as t2);


#5. Which countries have the highest crime rate and what is their happiness index? 
SELECT happiness_score, country_name, crime_index
from country_happiness_gdp_crime
order by crime_index desc
limit 3;

#6. Top 150 universities located at high gdp countries 

select uni_name, country_name, year_2021
from university_internet_gdp_country
order by year_2021 desc
limit 150;

#7. Top 3 countries have the most gold medals in 1996 and hows the happiness index in those countries

select country_name, year, gold
from country_medal_gdp_happiness
where year=1996
order by gold desc
limit 3;



#8. Top 3 countries have the highest crime rate with alcohol beer_capita consumption>200 gallons
select country_name, crime_index, beer_capita
from alcohol_country_internet_crime 
where beer_capita>200
order by crime_index Desc
limit 3;

#9. Internet usage of highest gdp countries?
select country_name, year_2021 as gdp_2021, internet_rate
from internet_gdp_country_view
order by year_2021
limit 3;

#10. What countries have won gold medals since 1995 and how’s their GDP in 2021? 
select country_name, gold, year_2020 as "GDP 2020"
from country_medal_gdp_happiness
where gold>0 AND year>1995;
