drop table if exists country_medals_log;
drop trigger if exists medals_trigger;
drop table if exists covidstatus_log;
drop trigger if exists covidstatus_trigger;

#Creating a Olypmpic Medals log and Trigger for Medal updates if any country has won again.
create table country_medals_log(
country_code CHAR(5),
log_date DATE,
log_msg VARCHAR(25)
);

delimiter //
create trigger medals_trigger after update on medals
for each row
begin
insert into country_medals_log(country_code, log_date, log_msg) values(NEW.country_code, NOW(), "I GOT A MEDAL!");
end;
//
delimiter ;

update medals set gold=gold+1 where country_code="LUX";


#Creating a covid log table and Trigger for Cases updates in any country.
create table covidstatus_log(
country_code CHAR(5),
log_date DATE,
log_msg VARCHAR(25),
case_count INT
);


delimiter //
create trigger covidstatus_trigger after update on covidstatus
for each row
begin
insert into covidstatus_log(country_code, log_date, log_msg, case_count) values(NEW.country_code, NOW(), "covid cases updated", NEW.total_cases);
end;
//
delimiter ;

update covidstatus set total_cases=total_cases+1 where country_code="DNK";
