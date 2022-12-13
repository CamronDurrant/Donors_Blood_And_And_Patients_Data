-- Done by Geovanni Stewart

CREATE DATABASE `Blood Donation System`;
USE `Blood Donation System`;


CREATE TABLE `City`(
	`City ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `City Name` VARCHAR(30) NOT NULL
);

INSERT INTO `City`(`City Name`) -- inserting these values into the City table
VALUES ("Los Angeles"),("Khuoshire"),("Klemouth"),("Los Angeles"),("Los Angeles"),("Los Angeles"),
	   ("Los Angeles"),("North Carolina"),("South Carilina"),("New Jersey"),("Minneapolis"),
       ("South Dakota");


CREATE TABLE `Street`(
    `Street ID` INT NOT NULL AUTO_INCREMENT,
    `Street Name` VARCHAR(30) NOT NULL,
    `City ID` INT NOT NULL ,
    PRIMARY KEY(`Street ID`),
    FOREIGN KEY(`City ID`) REFERENCES `City`(`City ID`)
);

INSERT INTO `Street`(`Street Name`,`City ID`) -- inserting these values into the Street table
VALUES ("11th Street",1),("8th Avenue Street", 2),("4th Cherry Street",3),
	   ("Euclid Avenue",6),("State Street East",1),("Tanglewood Drive",5),
       ("Route 17 Avenue Drive",5),("Jefferson Street",4),("9th Street West",7),
       ("Farguson Rd",1),("Mountain View",2),("Bag Street",4),("Hinds Town",3),
       ("Paper St",5);

-- SELECT * FROM `Street`;

CREATE TABLE `Disease`(
	`Disease ID` INT AUTO_INCREMENT PRIMARY KEY,
	`Disease Name` VARCHAR(30) NOT NULL,
    `Disease Type` VARCHAR(50) NOT NULL, 
    Is_Terminal VARCHAR(5)
);


-- Done by Jovaughn Rose


INSERT INTO `Disease`(`Disease Name`, `Disease Type`) -- inserting these data into the Disease table
VALUES
	("Aids", "Virus"),
    ("Cholera", "diarrheal illness"),
    ("Dengue Fever", "mosquito-borne"),
    ("Coronavirus", "Virus"),
    ('Marburg', 'Hemorrhagic')
;
CREATE TABLE `Patients Data`(
	`Patient ID` INT AUTO_INCREMENT PRIMARY KEY,
	`Patient Name` VARCHAR(30) NOT NULL,
    `Patient Gender` VARCHAR(10) NOT NULL,
    `Patient Age` INT NOT NULL,
    `Patient Blood Group` VARCHAR(20) NOT NULL, 
    `Patient Disease` INT,
	`Patient Address ID` INT NOT NULL,
	FOREIGN KEY(`Patient Address ID`) REFERENCES `Street`(`Street ID`),
	FOREIGN KEY(`Patient Disease`) REFERENCES `Disease`(`Disease ID`)
     
);

INSERT INTO `Patients Data`(`Patient Name`, `Patient Gender`, `Patient Age`, `Patient Blood Group`, `Patient Disease`, `Patient Address ID`)
VALUES 
	("Jessica Owens" , "Female", 35, "AB+", 4, 5),
    ("Alex Murphy"   , "Male"  , 30, "O+" , 1, 8),
    ("Colin Scott"   , "Male"  , 41, "A-" , 5, 6),
    ("Derik Kingley" , "Male"  , 39, "AB+", 3, 4),
    ("Alecia Watkins", "Female", 28, "O-" , 2, 3)
;

CREATE TABLE `Donor Data`(
	`Donor Id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`Donor Name` VARCHAR(20) NOT NULL,
    `Donor Gender` VARCHAR(10) NOT NULL,
    `Donor Age` INT NOT NULL,
	`Donor Blood Group` VARCHAR(5) NOT NULL,
    `Donor Contact number` VARCHAR(15),
    `Donor Medical report` VARCHAR(10) NOT NULL,
    `Donor Address ID` INT NOT NULL,
    FOREIGN KEY(`Donor Address ID`) REFERENCES `Street`(`Street ID`)
);

INSERT INTO `Donor Data`(`Donor Name`, `Donor Gender`, `Donor Age`, `Donor Blood Group`, `Donor Contact number`, `Donor Medical report`, `Donor Address ID`)
VALUES 
	("Alphonso Williams", "Male"    , 25   , "AB+" , "+175-389-1586", "N/A", 9),
    ("Margret Nelson"   , "Female"  , 39   , "O+"  , "+181-259-5725", "N/A", 1), 
    ("Sereena Hustle"   , "Female"  , 28   , "A-"  , "+195-825-8525", "N/A", 5),
    ("Andrew Zalensky"  , "Male"    ,24    , "AB+" , "+126-339-2536", "N/A", 8),
    ("Travis Jones"     , "Male"    , 37   , "O-"  , "+139-278-1345", "N/A", 3)
;

-- Done by Tyreese Harrison


CREATE TABLE `Blood Bank Data`(
	`Blood Bank ID` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`Blood Bank Name` VARCHAR(20) NOT NULL,
    `Blood Bank Contact Number` VARCHAR(15),
	`Blood Bank Address ID` INT NOT NULL,
    `Blood Donor’s ID` INT,
    `Donor Address ID` INT,
 	FOREIGN KEY(`Blood Bank Address ID`) REFERENCES `Street`(`Street ID`),
   --  FOREIGN KEY(`Blood Donor’s ID`) REFERENCES `Donor Data`(`Donor Id`)
	FOREIGN KEY(`Donor Address ID`) REFERENCES `Street`(`Street ID`)
);

INSERT INTO `Blood Bank Data`(`Blood Bank Name`,`Blood Bank Contact Number`,`Blood Bank Address ID`,`Donor Address ID`,`Blood Donor’s ID`)
VALUES
	("Belt Bank"      , "+119-814-8962", 4 , 2, 4),
    ("Andacondo Bank" , "+149-641-5921", 1 , 4, 3),
    ("Petro Bank"     , "+165-925-9614", 5 , 1, 2),
    ("Nova Scotia"    , "+185-528-2851", 5 , 2, 5),
    ("Save Safe Bank" , "+152-259-6926", 5 , 3, 1)
;

-- query testing section 
-- select * from `Donor Data`
-- where `Donor Name` = "Margret Nelson";

 -- DROP DATABASE `Blood Donation System`;