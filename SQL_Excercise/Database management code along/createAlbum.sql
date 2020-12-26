#DROP DATABASE IF EXISTS vinylrecordshop;
#CREATE DATABASE vinylrecordshop;
#USE vinylrecordshop;
#SHOW DATABASES;

#show tables

CREATE TABLE album(
	albumId INT AUTO_INCREMENT,
    CONSTRAINT pk_album
		primary key (albumId),
	albumTitle VARCHAR(100) NOT NULL,
    label VARCHAR(50),
    releaseDate DATE,
    price DECIMAL(5,2)
);