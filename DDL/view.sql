#Views
create view country_happiness_gdp_crime as
select c.country_code, c.country_name, h.freedom, h.happiness_score, g.year_2020, g.year_2021, cr.crime_index, cr.unemployment
from country c
join happiness h on c.country_code=h.country_code
join gdp g on c.country_code=g.country_code
join crime cr on c.country_code=cr.country_code;

create view alcohol_country_internet_crime as
select c.country_code, c.country_name, a.beer_capita, a.wine_capita, a.human_development, i.income_person, i.internet_rate, cr.unemployment, cr.crime_index
from country c
join alchappiness a on c.country_code=a.country_code
join internet i on c.country_code=i.country_code
join crime cr on c.country_code=cr.country_code;

create view country_medal_gdp_happiness as
select c.country_code, c.country_name, m.year, m.gold, m.silver, m.broze, g.year_2020, g.year_2021,  h.freedom, h.happiness_score
from country c
join medals m on c.country_code=m.country_code
join gdp g on c.country_code=g.country_code
join happiness h on c.country_code=h.country_code;

Create view university_internet_gdp_country as
select c.country_code, c.country_name, i.income_person, i.internet_rate, g.year_2020, g.year_2021, u.uni_name, u.uni_url
from country c
join universities u on c.country_code=u.country_code
join internet i on c.country_code=i.country_code
join gdp g on c.country_code=g.country_code

