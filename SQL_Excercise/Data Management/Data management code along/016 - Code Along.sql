use vinylrecordshop;
alter table artist
	modify artistLastName varchar(50) not null;

alter table artist
	add isHallOfFame tinyint not null;

describe artist;