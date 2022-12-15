create table if not exists crime(
crime_id INT primary key auto_increment,
country_code CHAR(5),
crime_index DECIMAL(10,6),
unemployment DECIMAL(10,6),
foreign key (country_code) references country(country_code) );

create table if not exists alchappiness(
alchappiness_id INT primary key auto_increment, country_code CHAR(5),
human_development DECIMAL(10,6), beer_capita DECIMAL(10,6),
 wine_capita DECIMAl(10,6),
foreign key (country_code) references country(country_code) );

create table if not exists gdp(
gdp_id INT primary key auto_increment,
country_code CHAR(5),
year_2020 BIGINT(50),
year_2021 BIGINT(50),
foreign key (country_code) references country(country_code) );

create table if not exists happiness(
happiness_id INT primary key auto_increment,
country_code CHAR(5),
freedom DECIMAL(10,6),
happiness_score DECIMAL(10,6),
foreign key (country_code) references country(country_code) );

create table if not exists internet(
internet_id INT primary key auto_increment,
country_code CHAR(5),
income_person DECIMAL(20,10),
internet_rate DECIMAL(20,10),
foreign key (country_code) references country(country_code) );

create table if not exists literacy(
literacy_id INT primary key auto_increment,
country_code CHAR(5),
data_year INT,
literacy_rate DECIMAL(10,6),
population BIGINT(55),
foreign key (country_code) references country(country_code) );

create table if not exists country(
country_code CHAR(5) primary key, country_name VARCHAR(25) );




create table if not exists covidstatus(
country_code CHAR(5) primary key,
total_cases INT,
total_deaths INT,
total_recovered INT,
active_cases INT,
death_permillion INT,
foreign key(country_code) references country(country_code) );

Create table if not exists medals(
country_code CHAR(5) primary key,
Year INT,
Gold INT,
Silver INT,
Bronze INT,
foreign key(country_code) references country(country_code) );

Create table if not exists universities(
Uiversity_id INT primary key auto_increment,
Country_code CHAR(5),
Uni_name VARCHAR(100),
Uni_url VARCHAR(100),
foreign key(country_code) references country(country_code) );