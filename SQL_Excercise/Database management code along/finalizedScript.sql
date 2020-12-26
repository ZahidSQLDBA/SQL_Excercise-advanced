DROP DATABASE IF EXISTS vinylrecordshop;
CREATE DATABASE vinylrecordshop;
USE vinylrecordshop;

DROP TABLE IF EXISTS album;
CREATE TABLE album(
	albumId INT AUTO_INCREMENT,
    CONSTRAINT pk_album
		primary key (albumId),
	albumTitle VARCHAR(100) NOT NULL,
    label VARCHAR(50),
    releaseDate DATE,
    price DECIMAL(5,2)
);

DROP TABLE IF EXISTS artist;
CREATE TABLE artist(
	artistId INT AUTO_INCREMENT,
    CONSTRAINT pk_artist
		primary key (artistId),
	artistFirstName varchar(25) NOT NULL,
    artistLastName varchar(50)
);

DROP TABLE IF EXISTS band;
CREATE TABLE band(
	bandId INT AUTO_INCREMENT,
    CONSTRAINT pk_band
		primary key (bandId),
	bandName VARCHAR(50)
);

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

DROP TABLE IF EXISTS song;
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

DROP TABLE IF EXISTS songAlbum;
CREATE TABLE songAlbum (
	songId INT,
    albumID INT,
    constraint pk_songAlbum
		PRIMARY KEY (songId, albumId),
	constraint pk_songAlbum_song
		foreign key (songId)
		references song(songId),
	constraint pk_songAlbum_album
		foreign key (albumId)
		references album(albumId)
);