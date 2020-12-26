#DROP DATABASE IF EXISTS vinylrecordshop;
#CREATE DATABASE vinylrecordshop;
#USE vinylrecordshop;
#SHOW DATABASES;

#show tables
CREATE TABLE band(
	bandId INT AUTO_INCREMENT,
    CONSTRAINT pk_band
		primary key (bandId),
	bandName VARCHAR(50)
);