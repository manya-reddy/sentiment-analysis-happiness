#Creating tables country, covidstatus, crime, gdp, happiness, internet, literacy, medals, universities, alchappiness.

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema assignment_3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema assignment_3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `assignment_3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `assignment_3` ;

-- -----------------------------------------------------
-- Table `assignment_3`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`country` (
  `country_code` CHAR(5) NOT NULL,
  `country_name` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`country_code`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assignment_3`.`alchappiness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`alchappiness` (
  `country_code` CHAR(5) PRIMARY KEY,
  `human_development` DECIMAL(10,6) NULL DEFAULT NULL,
  `beer_capita` DECIMAL(10,6) NULL DEFAULT NULL,
  `wine_capita` DECIMAL(10,6) NULL DEFAULT NULL,
  INDEX `country_code` (`country_code` ASC) VISIBLE,
  CONSTRAINT `alchappiness_ibfk_1`
    FOREIGN KEY (`country_code`)
    REFERENCES `assignment_3`.`country` (`country_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 107
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assignment_3`.`crime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`crime` (
  `crime_id` INT NOT NULL AUTO_INCREMENT,
  `country_code` CHAR(5) NULL DEFAULT NULL,
  `crime_index` DECIMAL(10,6) NULL DEFAULT NULL,
  `unemployment` DECIMAL(10,6) NULL DEFAULT NULL,
  PRIMARY KEY (`crime_id`),
  INDEX `country_code` (`country_code` ASC) VISIBLE,
  CONSTRAINT `crime_ibfk_1`
    FOREIGN KEY (`country_code`)
    REFERENCES `assignment_3`.`country` (`country_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 112
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assignment_3`.`gdp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`gdp` (
  `gdp_id` INT NOT NULL AUTO_INCREMENT,
  `country_code` CHAR(5) NULL DEFAULT NULL,
  `year_2020` BIGINT NULL DEFAULT NULL,
  `year_2021` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`gdp_id`),
  INDEX `country_code` (`country_code` ASC) VISIBLE,
  CONSTRAINT `gdp_ibfk_1`
    FOREIGN KEY (`country_code`)
    REFERENCES `assignment_3`.`country` (`country_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 230
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assignment_3`.`happiness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`happiness` (
  `happiness_id` INT NOT NULL AUTO_INCREMENT,
  `country_code` CHAR(5) NULL DEFAULT NULL,
  `freedom` DECIMAL(10,6) NULL DEFAULT NULL,
  `happiness_score` DECIMAL(10,6) NULL DEFAULT NULL,
  PRIMARY KEY (`happiness_id`),
  INDEX `country_code` (`country_code` ASC) VISIBLE,
  CONSTRAINT `happiness_ibfk_1`
    FOREIGN KEY (`country_code`)
    REFERENCES `assignment_3`.`country` (`country_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 150
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assignment_3`.`internet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`internet` (
  `internet_id` INT NOT NULL AUTO_INCREMENT,
  `country_code` CHAR(5) NULL DEFAULT NULL,
  `income_person` DECIMAL(20,10) NULL DEFAULT NULL,
  `internet_rate` DECIMAL(20,10) NULL DEFAULT NULL,
  PRIMARY KEY (`internet_id`),
  INDEX `country_code` (`country_code` ASC) VISIBLE,
  CONSTRAINT `internet_ibfk_1`
    FOREIGN KEY (`country_code`)
    REFERENCES `assignment_3`.`country` (`country_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 184
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assignment_3`.`literacy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_3`.`literacy` (
  `literacy_id` INT NOT NULL AUTO_INCREMENT,
  `country_code` CHAR(5) NULL DEFAULT NULL,
  `data_year` INT NULL DEFAULT NULL,
  `literacy_rate` DECIMAL(10,6) NULL DEFAULT NULL,
  `population` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`literacy_id`),
  INDEX `country_code` (`country_code` ASC) VISIBLE,
  CONSTRAINT `literacy_ibfk_1`
    FOREIGN KEY (`country_code`)
    REFERENCES `assignment_3`.`country` (`country_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 208
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
