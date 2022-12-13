---DONE BY CAMRON DURRANT :)---

CREATE DATABASE Blood_Donation_System
USE Blood_Donation_System


CREATE TABLE City(  ----QUERY EDIT COMPLETED :\
    City_Name VARCHAR(30)
);

-----Querying the Database to the table
SELECT *
FROM City


INSERT INTO City (City_Name) -- inserting these values into the City table
VALUES ('Los Angeles'),('Khuoshire'),('Klemouth'),('Los Angeles'),('Los Angeles'),('Los Angeles'),
	   ('Los Angeles'),('North Carolina'),('South Carilina'),('New Jersey'),('Minneapolis'),
       ('South Dakota');


CREATE TABLE Street(------QUERY EDIT COMPLETED :/
    Street_ID INT IDENTITY(1,1) NOT NULL,
    Street_Name VARCHAR(30) NOT NULL, 
	City_ID INT NOT NULL,
    PRIMARY KEY(Street_ID),
);

INSERT INTO Street (Street_Name, City_ID) -- inserting these values into the Street table
VALUES ('11th Street',1),('8th Avenue Street', 2),('4th Cherry Street',3),
	   ('Euclid Avenue',6),('State Street East',1),('Tanglewood Drive',5),
       ('Route 17 Avenue Drive',5),('Jefferson Street',4),('9th Street West',7),
       ('Farguson Rd',1),('Mountain View',2),('Bag Street',4),('Hinds Town',3),
       ('Paper St',5);

SELECT * 
FROM Street

CREATE TABLE Disease(------QUERY EDIT COMPLETED :/
	 Disease_ID INT IDENTITY(1,1) NOT NULL,
	 Disease_Name VARCHAR(30) NOT NULL,
     Disease_Type VARCHAR(50) NOT NULL, 
     Is_Terminal VARCHAR(5)
);


-----DONE BY CAMRON DURRANT :)

INSERT INTO Disease (Disease_Name, Disease_Type) -- inserting these data into the Disease table
VALUES('Aids', 'Virus'),
    ('Cholera', 'diarrheal illness'),
    ('Dengue Fever', 'mosquito-borne'),
    ('Coronavirus', 'Virus'),
    ('Marburg', 'Hemorrhagic');

-------TESTING THE DISEASE COLUMN
SELECT *
FROM Disease
	

CREATE TABLE Patients_Data( ------QUERY EDIT COMPLETED :/
	 Patient_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	 Patient_Name VARCHAR(30) NOT NULL,
     Patient_Gender VARCHAR(10) NOT NULL,
     Patient_Age INT NOT NULL,
     Patient_Blood_Group VARCHAR(20) NOT NULL, 
     Patient_Disease INT,
	 Patient_Address_ID INT NOT NULL
     
);

INSERT INTO Patients_Data (Patient_Name, Patient_Gender, Patient_Age, Patient_Blood_Group, Patient_Disease, Patient_Address_ID)
VALUES 
	('Jessica Owens' , 'Female', 35, 'AB+', 4, 5),
    ('Alex Murphy'   , 'Male'  , 30, 'O+' , 1, 8),
    ('Colin Scott'   , 'Male'  , 41, 'A-' , 5, 6),
    ('Derik Kingley' , 'Male'  , 39, 'AB+', 3, 4),
    ('Alecia Watkins', 'Female', 28, 'O-' , 2, 3)
;

----testing the patients data table

SELECT *
FROM Patients_Data

CREATE TABLE Donor_Data( ------QUERY EDIT COMPLETED :/
	 Donor_Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	 Donor_Name VARCHAR(20) NOT NULL,
     Donor_Gender VARCHAR(10) NOT NULL,
     Donor_Age INT NOT NULL,
	 Donor_Blood_Group VARCHAR(5) NOT NULL,
     Donor_Contact_number VARCHAR(15),
     Donor_Medical_report VARCHAR(10) NOT NULL,
     Donor_Address_ID INT NOT NULL,
);

INSERT INTO Donor_Data (Donor_Name, Donor_Gender, Donor_Age, Donor_Blood_Group, Donor_Contact_Number, Donor_Medical_Report, Donor_Address_ID)
VALUES 
	('Alphonso Williams', 'Male'    , 25   , 'AB+' , '+175-389-1586', 'N/A', 9),
    ('Margret Nelson'   , 'Female'  , 39   , 'O+'  , '+181-259-5725', 'N/A', 1), 
    ('Sereena Hustle'   ,'Female'  , 28   , 'A-'  , '+195-825-8525', 'N/A', 5),
    ('Andrew Zalensky'  , 'Male'    , 24    , 'AB+' , '+126-339-2536', 'N/A', 8),
    ('Travis Jones'     , 'Male'    , 37   , 'O-'  , '+139-278-1345', 'N/A', 3)
;

------testing the donors' table
SELECT *
FROM Donor_Data

------DONE BY CAMRON DURRANT


CREATE TABLE Blood_Bank_Data( ------QUERY EDIT COMPLETED :/
	 Blood_Bank_ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	 Blood_Bank_Name VARCHAR(20) NOT NULL,
     Blood_Bank_Contact_Number VARCHAR(15),
	 Blood_Bank_Address_ID INT NOT NULL,
     Blood_Donors_ID INT,
     Donor_Address_ID INT,
);

INSERT INTO Blood_Bank_Data (Blood_Bank_Name, Blood_Bank_Contact_Number, Blood_Bank_Address_ID, Donor_Address_ID, Blood_Donors_ID)
VALUES
	('Belt Bank'      , '+119-814-8962', 4 , 2, 4),
    ('Andacondo Bank' , '+149-641-5921', 1 , 4, 3),
    ('Petro Bank'     , '+165-925-9614', 5 , 1, 2),
    ('Nova Scotia'    , '+185-528-2851', 5 , 2, 5),
    ('Save Safe Bank' , '+152-259-6926', 5 , 3, 1)
;

-----testing the blood bank data table
SELECT *
FROM Blood_Bank_Data

 -- DROP DATABASE `Blood Donation


 ------------------------------------------------------END OF QUERY EDIT-------------------------------------------------------