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

-- -----------------------------------------------------
-- Data for table `chore`
-- -----------------------------------------------------
START TRANSACTION;
USE `chore`;
INSERT INTO `chore` (`id`, `title`, `description`, `room`, `frequency_weekday`, `difficulty_ranking`, `tool`, `instructions`, `additional_information`) VALUES (1, 'Vacuum Living Room', 'Thoroughly vacuum the living room carpet and corners.', 'Living Room', 'Monday', 'Moderate', 'Vacuum Cleaner', 'Start from one corner and move methodically across the entire living room, ensuring all areas are covered.', 'Ensure to empty the vacuum bag after completion.');
INSERT INTO `chore` (`id`, `title`, `description`, `room`, `frequency_weekday`, `difficulty_ranking`, `tool`, `instructions`, `additional_information`) VALUES (2, 'Dust Bedroom Furniture', 'Dust and polish bedroom furniture surfaces.', 'Bedroom', 'Tuesday', 'Easy', 'Duster', 'Use a soft cloth or duster to gently remove dust from bedroom furniture surfaces. Apply furniture polish for a polished finish.', 'Be cautious with delicate surfaces and ornaments.');
INSERT INTO `chore` (`id`, `title`, `description`, `room`, `frequency_weekday`, `difficulty_ranking`, `tool`, `instructions`, `additional_information`) VALUES (3, 'Mop Kitchen Floor', 'Mop and clean the kitchen floor thoroughly.', 'Kitchen', 'Friday', 'Hard', 'op and Bucket, Floor Cleaner', 'Fill the bucket with floor cleaner and mop the kitchen floor, paying attention to corners and high-traffic areas.', 'Allow the floor to air-dry completely.');
INSERT INTO `chore` (`id`, `title`, `description`, `room`, `frequency_weekday`, `difficulty_ranking`, `tool`, `instructions`, `additional_information`) VALUES (4, 'Clean Bathroom Sink', 'Scrub and clean the bathroom sink and faucet.', 'Bathroom', 'Sunday', 'Easy', 'Sponges, Scrubbers, All-Purpose Cleaner', 'Apply an all-purpose cleaner on the sink surface and scrub using a sponge. Clean the faucet and fixtures.', 'Wipe dry to prevent water stains.');
INSERT INTO `chore` (`id`, `title`, `description`, `room`, `frequency_weekday`, `difficulty_ranking`, `tool`, `instructions`, `additional_information`) VALUES (5, 'Laundry - Wash Bed Linens', 'ash and launder bed linens.', 'Laundry Room', 'Thursday', 'Moderate', 'Laundry Detergent, Washing Machine', 'Separate bed linens by color and wash them in the washing machine with a suitable detergent.', 'Follow care instructions on the fabric labels.');
INSERT INTO `chore` (`id`, `title`, `description`, `room`, `frequency_weekday`, `difficulty_ranking`, `tool`, `instructions`, `additional_information`) VALUES (6, 'Clean Windows in Living Room', 'Wash and clean the windows in the living room.', 'Living Room', 'Wednesday', 'Moderate', 'Window Cleaner, Squeegee, Microfiber Cloths', 'Mix window cleaner with water, use a squeegee to clean windows, and wipe dry with a microfiber cloth.', 'Ensure a streak-free finish.');

COMMIT;

