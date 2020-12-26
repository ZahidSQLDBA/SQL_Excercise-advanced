#DROP DATABASE IF EXISTS vinylrecordshop;
#CREATE DATABASE vinylrecordshop;
#USE vinylrecordshop;
#SHOW DATABASES;

#show tables

CREATE TABLE song (
	songId INT NOT NULL auto_increment,
    songTitle VARCHAR(100) NOT NULL,
    videoUrl VARCHAR(100),
    bandId INT NOT NULL,
	constraint pk_song
		PRIMARY KEY (songId),
	constraint fk_song_band
		FOREIGN KEY (bandId)
        REFERENCES band(bandId)
);
