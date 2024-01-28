-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema chore
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `chore` ;

-- -----------------------------------------------------
-- Schema chore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chore` ;
-- -----------------------------------------------------
-- Schema chore
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `chore` ;

-- -----------------------------------------------------
-- Schema chore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chore` ;
USE `chore` ;

-- -----------------------------------------------------
-- Table `chore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `chore` ;

CREATE TABLE IF NOT EXISTS `chore` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `description` VARCHAR(2000) NOT NULL,
  `room` VARCHAR(45) NOT NULL,
  `frequency_weekday` VARCHAR(45) NOT NULL,
  `difficulty_ranking` VARCHAR(200) NOT NULL,
  `tool` VARCHAR(400) NOT NULL,
  `instructions` VARCHAR(2000) NOT NULL,
  `additional_information` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

USE `chore` ;

-- -----------------------------------------------------
-- Table `chore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `chore` ;

CREATE TABLE IF NOT EXISTS `chore` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `description` VARCHAR(2000) NOT NULL,
  `room` VARCHAR(45) NOT NULL,
  `frequency_weekday` VARCHAR(45) NOT NULL,
  `difficulty_ranking` VARCHAR(200) NOT NULL,
  `tool` VARCHAR(400) NOT NULL,
  `instructions` VARCHAR(2000) NOT NULL,
  `additional_information` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS parent@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'parent'@'localhost' IDENTIFIED BY 'parent';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'parent'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'parent'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'parent'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
