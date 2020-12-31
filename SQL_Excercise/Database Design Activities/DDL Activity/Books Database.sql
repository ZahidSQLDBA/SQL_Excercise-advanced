drop database if exists BooksDatabase;
create database BooksDatabase;
use BooksDatabase;

drop table if exists Author;
create table Author(
	authorId int auto_increment,
    constraint pk_author
		primary key (authorId),
    firstName varchar(25),
    lastName varchar(50),
    gender varchar(1),
    dateOfBrith datetime,
    dateofDeath datetime
);

drop table if exists Book;
create table Book (
	bookId int auto_increment,
    constraint pk_book
		primary key (bookId),
	title varchar(100),
    publicationDate datetime
);

drop table if exists AuthorBook;
create table AuthorBook (
	authorId INT,
    bookId INT,
    constraint pk_authorBook
		PRIMARY KEY (authorId, bookId),
	constraint pk_authorBook_author
		foreign key (authorId)
		references Author(authorId),
	constraint pk_authorBook_book
		foreign key (bookId)
		references Book(bookId)
);

drop table if exists Genre;
create table Genre (
	genreId int auto_increment,
    constraint pk_genre
		primary key (genreId),
	genreName varchar(25)
);

drop table if exists BookGenre;
create table BookGenre (
	bookId int,
    genreId int,
    constraint pk_bookGenre
		primary key(bookId, genreId),
	constraint pk_bookGenre_book
		foreign key (bookId)
        references Book(bookId),
	constraint pk_bookGenre_genre
		foreign key (genreId)
        references Genre(genreId)
);

drop table if exists FormatType;
create table FormatType (
	formatTypeId int auto_increment,
    constraint pk_format
		primary key (formatTypeId),
	formatTypeName varchar(12)
);

drop table if exists BookFormatType;
create table BookFormatType (
	bookId int,
    formatTypeId int,
    constraint pk_bookFormatType
		primary key(bookId, formatTypeId),
	constraint pk_bookFormatType_book
		foreign key (bookId)
        references Book(bookId),
	constraint pk_bookFormatType_formatType
		foreign key (formatTypeId)
        references FormatType(formatTypeId)
);