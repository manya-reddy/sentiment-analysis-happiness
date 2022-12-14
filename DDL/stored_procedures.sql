#Creating stored procedure for covid summary to get an overview on total cases and total deaths
#creating stored procedure for human development to understand humans maturity in a country
#creatinga stored procedure for active cases in any country to know how risky it is to move/travel to that country

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `covid_summary`()
BEGIN
select country_code, total_cases, total_deaths from covidstatus;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `human_development`(in x INT)
BEGIN
select human_development, country_code from alchappiness
where human_development>x;
END$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE `active_cases`(In cc CHAR(10))
BEGIN
select active_cases, country_code from covidstatus where country_code=cc;
END$$
DELIMITER ;