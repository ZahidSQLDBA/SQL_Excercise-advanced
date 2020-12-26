#DROP DATABASE IF EXISTS vinylrecordshop;
#CREATE DATABASE vinylrecordshop;
#USE vinylrecordshop;
#SHOW DATABASES;

#show tables

CREATE TABLE artist(
	artistId INT AUTO_INCREMENT,
    CONSTRAINT pk_artist
		primary key (artistId),
	artistFirstName varchar(25),
    artistLastName varchar(50)
);