-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Company`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Company` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Company` (
  `company_id` INT NOT NULL,
  `company_size_from` INT NULL,
  `company_size_to` INT NULL,
  PRIMARY KEY (`company_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Location` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Location` (
  `location_id` INT NOT NULL,
  `city` VARCHAR(45) NULL,
  `country_code` VARCHAR(45) NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Job`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Job` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Job` (
  `job_id` INT NOT NULL,
  `location_id` INT NOT NULL,
  `company_id` INT NOT NULL,
  `job_title` VARCHAR(45) NULL,
  `experience` VARCHAR(45) NULL,
  `remote_workplace` TINYINT NULL,
  `remote_interview` TINYINT NULL,
  PRIMARY KEY (`job_id`),
  INDEX `location_id_idx` (`location_id` ASC) VISIBLE,
  INDEX `company_id_idx` (`company_id` ASC) VISIBLE,
  CONSTRAINT `company_id`
    FOREIGN KEY (`company_id`)
    REFERENCES `mydb`.`Company` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `location_id`
    FOREIGN KEY (`location_id`)
    REFERENCES `mydb`.`Location` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Skills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Skills` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Skills` (
  `skill_id` INT NOT NULL AUTO_INCREMENT,
  `skill_name` VARCHAR(45) NULL,
  PRIMARY KEY (`skill_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Salary_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Salary_Type` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Salary_Type` (
  `salary_id` INT NOT NULL,
  `if_permanent` TINYINT NULL,
  `if_b2b` TINYINT NULL,
  `if_mandate` TINYINT NULL,
  PRIMARY KEY (`salary_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Job_Salary_Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Job_Salary_Type` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Job_Salary_Type` (
  `salary_id` INT NOT NULL,
  `job_id` INT NOT NULL,
  `salary_from_permanent` FLOAT NULL,
  `salary_to_permanent` FLOAT NULL,
  `salary_from_b2B` FLOAT NULL,
  `salary_to_b2b` FLOAT NULL,
  `salary_from_mandate` FLOAT NULL,
  `salary_to_mandate` FLOAT NULL,
  INDEX `salary_id_idx` (`salary_id` ASC) VISIBLE,
  INDEX `job_id_idx` (`job_id` ASC) VISIBLE,
  PRIMARY KEY (`salary_id`, `job_id`),
  CONSTRAINT `salary_id`
    FOREIGN KEY (`salary_id`)
    REFERENCES `mydb`.`Salary_Type` (`salary_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `job_id`
    FOREIGN KEY (`job_id`)
    REFERENCES `mydb`.`Job` (`job_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Job_Skills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Job_Skills` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Job_Skills` (
  `job_id` INT NOT NULL,
  `skill_id` INT NOT NULL,
  `skill_value` VARCHAR(45) NULL,
  INDEX `fk_Job_has_Skills_Skills1_idx` (`skill_id` ASC) VISIBLE,
  INDEX `fk_Job_has_Skills_Job1_idx` (`job_id` ASC) VISIBLE,
  PRIMARY KEY (`job_id`, `skill_id`),
  CONSTRAINT `fk_Job_has_Skills_Job1`
    FOREIGN KEY (`job_id`)
    REFERENCES `mydb`.`Job` (`job_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Job_has_Skills_Skills1`
    FOREIGN KEY (`skill_id`)
    REFERENCES `mydb`.`Skills` (`skill_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
