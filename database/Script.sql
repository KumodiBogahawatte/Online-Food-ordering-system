--<ScriptOptions statementTerminator=";"/>

ALTER TABLE `foodStore`.`users` DROP PRIMARY KEY;

ALTER TABLE `foodStore`.`food` DROP PRIMARY KEY;

ALTER TABLE `foodStore`.`idea` DROP PRIMARY KEY;

ALTER TABLE `foodStore`.`payment` DROP PRIMARY KEY;

ALTER TABLE `foodStore`.`review` DROP PRIMARY KEY;

ALTER TABLE `foodStore`.`food` DROP INDEX `foodStore`.`foodID_UNIQUE`;

ALTER TABLE `foodStore`.`users` DROP INDEX `foodStore`.`USER`;

DROP TABLE `foodStore`.`review`;

DROP TABLE `foodStore`.`food`;

DROP TABLE `foodStore`.`payment`;

DROP TABLE `foodStore`.`users`;

DROP TABLE `foodStore`.`idea`;

CREATE TABLE `foodStore`.`review` (
	`rid` INT NOT NULL,
	`name` VARCHAR(45) NOT NULL,
	`mobile` VARCHAR(45) NOT NULL,
	`email` VARCHAR(45) NOT NULL,
	`message` VARCHAR(45) NOT NULL,
	PRIMARY KEY (`rid`)
);

CREATE TABLE `foodStore`.`food` (
	`foodID` INT NOT NULL,
	`fName` VARCHAR(45) NOT NULL,
	`fPrice` DOUBLE NOT NULL,
	`fDescription` VARCHAR(120) NOT NULL,
	PRIMARY KEY (`foodID`)
);

CREATE TABLE `foodStore`.`payment` (
	`payID` INT NOT NULL,
	`cardNo` VARCHAR(45),
	`expDate` VARCHAR(45),
	`cvv` INT,
	`email` VARCHAR(45),
	PRIMARY KEY (`payID`)
);

CREATE TABLE `foodStore`.`users` (
	`uID` INT NOT NULL,
	`name` VARCHAR(45),
	`address` VARCHAR(45),
	`email` VARCHAR(45),
	`mobile` VARCHAR(45),
	`uname` VARCHAR(45),
	`pwd` VARCHAR(45),
	PRIMARY KEY (`uID`)
);

CREATE TABLE `foodStore`.`idea` (
	`mID` INT NOT NULL,
	`name` VARCHAR(45),
	`email` VARCHAR(45),
	`foodType` VARCHAR(45),
	`message` VARCHAR(45),
	PRIMARY KEY (`mID`)
);

CREATE UNIQUE INDEX `foodID_UNIQUE` ON `foodStore`.`food` (`foodID` ASC);

CREATE UNIQUE INDEX `USER` ON `foodStore`.`users` (null);

