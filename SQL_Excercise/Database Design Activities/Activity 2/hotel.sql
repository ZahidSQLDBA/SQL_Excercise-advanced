/*
Activity 2
Deign a database for a hotel. It must include:

- Room information, including how many beds and what size the beds are, available amenities, such as microwave, refrigerator, 
	or coffee pot
- Guest information, including name, address, phone number, and email address
- Reservations, including start date, end date, who has reserved the room, and the number of guests
*/ 

drop database if exists Hotel;
create database Hotel;
use Hotel;

drop table if exists Room;
create table Room(
	roomId int auto_increment,
    constraint pk_room
		primary key (roomId),
	numberOfBeds int not null
);

drop table if exists BedSize;
create table BedSize(
	bedSizeId int auto_increment,
    constraint pk_bedSize
		primary key (bedSizeId),
	sizeOfBed varchar (50) not null
);

drop table if exists Amenities;
create table Amenities(
	amenitiesId int auto_increment,
    constraint pk_amenities
		primary key (amenitiesId),
	typeOfAmenities varchar (50) not null
);

drop table if exists BedsInRoom;
create table BedsInRoom(
	roomId INT,
    bedSizeId INT,
    constraint pk_bedsInRoom
		PRIMARY KEY (roomId, bedSizeId),
	constraint pk_bedsInRoom_room
		foreign key (roomId)
		references Room(roomId),
	constraint pk_bedsInRoom_bedSize
		foreign key (bedSizeId)
		references BedSize(bedSizeId)
);

drop table if exists AmenitiesInRoom;
create table AmenitiesInRoom(
	roomId INT,
    amenitiesId INT,
    constraint pk_amenitiesInRoom
		PRIMARY KEY (roomId, amenitiesId),
	constraint pk_amenitiesInRoom_room
		foreign key (roomId)
		references Room(roomId),
	constraint pk_amenitiesInRoom_amenities
		foreign key (amenitiesId)
		references Amenities(amenitiesId)
);

drop table if exists Guest;
create table Guest (
	guestId int auto_increment,
    constraint pk_guest
		primary key (guestId),
	firstName varchar (50) not null,
    lastName varchar (50) not null,
    email varchar (50) not null,
    address varchar (50) not null,
    phone int 
);

drop table if exists Reservation;
create table Reservation (
	reservationId int auto_increment,
    constraint pk_reservation
		primary key (reservationId),
	startDate date,
    endDate date,
    reservedBy int,
    constraint fk_guest
		FOREIGN KEY (reservedBy)
        REFERENCES Guest(guestId),
	room int,
    constraint fk_room
		FOREIGN KEY (room)
        REFERENCES Room(roomId)
);

drop table if exists GuestParty;
create table GuestParty (
	reservationId int,
    guestId int,
    constraint pk_guestparty
		PRIMARY KEY (reservationId, guestId),
	constraint pk_guestparty_reservation
		foreign key (reservationId)
		references Reservation(reservationId),
	constraint pk_guestparty_guest
		foreign key (guestId)
		references Guest(guestId)
);