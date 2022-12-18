create database if not exists assignment_3_new;
use assignment_3_new;

# Create tables

create table if not exists country (
country_code CHAR(5) primary key,
country_name VARCHAR(25) );

create table if not exists crime(
country_code CHAR(5) primary key,
crime_index DECIMAL(10,6),
unemployment DECIMAL(10,6),
foreign key (country_code) references country(country_code)
);


create table if not exists alchappiness(
country_code CHAR(5) primary key,
human_development DECIMAL(10,6),
beer_capita DECIMAL(10,6),
wine_capita DECIMAl(10,6),
foreign key (country_code) references country(country_code)
);


create table if not exists gdp(
country_code CHAR(5) primary key,
year_2020 BIGINT,
year_2021 BIGINT,
foreign key (country_code) references country(country_code)
);


create table if not exists happiness(
country_code CHAR(5) primary key,
freedom DECIMAL(10,6),
happiness_score DECIMAL(10,6),
foreign key (country_code) references country(country_code)
);

create table if not exists internet(
country_code CHAR(5) primary key,
income_person DECIMAL(20,10),
internet_rate DECIMAL(20,10),
foreign key (country_code) references country(country_code)
);


create table if not exists literacy(
country_code CHAR(5) primary key,
data_year INT,
literacy_rate DECIMAL(10,6),
population BIGINT,
foreign key (country_code) references country(country_code)
);

create table if not exists covidstatus(
country_code CHAR(5) primary key,
total_cases INT,
total_deaths INT,
total_recovered INT,
active_cases INT,
death_permillion INT,
foreign key(country_code) references country(country_code)
);

Create table if not exists medals(
country_code CHAR(5) primary key,
Year INT,
Gold INT,
Silver INT,
Broze INT,
foreign key(country_code) references country(country_code)
);


Create table if not exists universities(
Uiversity_id INT primary key auto_increment,
Country_code CHAR(5),
Uni_name VARCHAR(100),
Uni_url VARCHAR(100),
foreign key(country_code) references country(country_code));