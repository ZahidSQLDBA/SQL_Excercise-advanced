/*
Activity 1
Deign a database for a pet shop. It must include:

- Information about the doctors in the practice, including name, type of pets they treat, and when they joined the practice
- Pet owner information, including name, mailing address, phone number, and email address
- Pet information, including the name of the pet, who owns the pet, what kind of pet it is, its birthdate, and its vaccination records.
*/
-- Pet shop does not seem appropriate name. Will adjust and name it AnimalClinic

DROP DATABASE IF EXISTS AnimalClinic;
CREATE DATABASE AnimalClinic;
USE AnimalClinic;

DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor(
	doctorId INT AUTO_INCREMENT,
    CONSTRAINT pk_doctor
		primary key (doctorId),
	doctorFirstName VARCHAR(50) NOT NULL,
    doctorLastName VARCHAR(50) NOT NULL,
    joinDate DATE
);

DROP TABLE IF EXISTS petSpecies;
CREATE TABLE petSpecies(
	petSpeciesId INT AUTO_INCREMENT,
    CONSTRAINT pk_petSpecies
		primary key (petSpeciesId),
	Species varchar(50) NOT NULL
);

DROP TABLE IF EXISTS petOwner;
CREATE TABLE petOwner(
	petOwnerId INT AUTO_INCREMENT,
    CONSTRAINT pk_petOwner
		primary key (petOwnerId),
	ownerFirstName VARCHAR(50),
    ownerLastName VARCHAR(50),
    address VARCHAR(200),
    phone int,
    email VARCHAR(50)
);

DROP TABLE IF EXISTS vaccine;
CREATE TABLE vaccine(
	vaccineId INT AUTO_INCREMENT,
    CONSTRAINT pk_vaccine
		primary key (vaccineId),
	vaccineName varchar(50) NOT NULL
);

DROP TABLE IF EXISTS doctorPetSpecialty;
CREATE TABLE doctorPetSpecialty(
	doctorId INT,
    petSpeciesId INT,
    constraint pk_doctorPetSpecialty
		PRIMARY KEY (doctorId, petSpeciesId),
	constraint pk_doctorPetSpecialty_doctor
		foreign key (doctorId)
		references doctor(doctorId),
	constraint pk_doctorPetSpecialty_petSpecies
		foreign key (petSpeciesId)
		references petSpecies(petSpeciesId)
);

DROP TABLE IF EXISTS pet;
CREATE TABLE pet (
	petId INT NOT NULL auto_increment,
    petName VARCHAR(50) NOT NULL,
    petOwnerId INT,
    petSpeciesId INT,
	constraint pk_pet
		PRIMARY KEY (petId),
	constraint fk_pet_petOwner
		FOREIGN KEY (petOwnerId)
        REFERENCES petOwner(petOwnerId),
	constraint fk_pet_petSpecies
		FOREIGN KEY (petSpeciesId)
        REFERENCES petSpecies(petSpeciesId)
);

DROP TABLE IF EXISTS petVaccineRecord;
CREATE TABLE petVaccineRecord (
	petId INT,
    vaccineId INT,
    constraint petVaccineRecord
		PRIMARY KEY (petId, vaccineId),
	constraint pk_petVaccineRecord_pet
		foreign key (petId)
		references pet(petId),
	constraint pk_petVaccineRecord_vaccine
		foreign key (vaccineId)
		references vaccine(vaccineId)
);