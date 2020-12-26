#DROP DATABASE IF EXISTS vinylrecordshop;
#CREATE DATABASE vinylrecordshop;
#USE vinylrecordshop;
#SHOW DATABASES;

#show tables

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