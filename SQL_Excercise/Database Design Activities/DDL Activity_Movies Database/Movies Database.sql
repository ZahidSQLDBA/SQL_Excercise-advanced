drop database if exists Movies;
create database Movies;
use Movies;

drop table if exists Genre;
create table Genre(
	genreId int auto_increment,
    constraint pk_genre
		primary key (genreId),
	genreName nvarchar (30) not null
);

drop table if exists Director;
create table Director (
	directorId int auto_increment,
    constraint pk_director
		primary key (directorId),
	firstName nvarchar (30) not null,
    lastName nvarchar (30) not null,
    birthdate datetime
);

drop table if exists Rating;
create table Rating (
	ratingId int auto_increment,
    constraint pk_rating
		primary key (ratingId),
	ratingName varchar(5) not null
);

drop table if exists Actor;
create table Actor(
	actorId int auto_increment,
    constraint pk_actor
		primary key(actorId),
    firstName nvarchar(30) not null,
    lastName nvarchar(30) not null,
    birthDate datetime
);

drop table if exists Movie;
create table Movie (
	movieId int auto_increment,
	constraint pk_movie
		primary key (movieId),
	genreId int not null,
	constraint fk_genre
		foreign key (genreId)
		references Genre(genreId),
	directorId int,
    constraint fk_director
		foreign key (directorId)
        references Director(directorId),
	ratingId int,
	constraint fk_rating
		foreign key (ratingId)
        references Rating(ratingId),
	title nvarchar(128) not null,
	releaseDate datetime
);

drop table if exists CastMembers;
create table CastMembers(
	castMemberId int auto_increment,
    constraint pk_castmember
		primary key(castMemberId),
	actorId int,
	constraint fk_actor
		foreign key (actorId)
        references Actor(actorId),
	movieId int,
    constraint fk_movie
		foreign key (movieId)
        references Movie(movieId),
	role varchar(50) not null
);