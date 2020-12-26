#DROP DATABASE IF EXISTS vinylrecordshop;
#CREATE DATABASE vinylrecordshop;
#USE vinylrecordshop;
#SHOW DATABASES;

#show tables

DROP TABLE IF EXISTS bandArtist;
CREATE TABLE bandArtist (
	bandId INT,
    artistId INT,
    constraint pk_bandArtist
		PRIMARY KEY (bandId, artistId),
	constraint pk_bandArtist_band
		foreign key (bandId)
		references band(bandId),
	constraint pk_bandArtist_artist
		foreign key (artistId)
		references artist(artistId)
);