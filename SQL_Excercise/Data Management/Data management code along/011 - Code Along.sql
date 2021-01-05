use vinylrecordshop;

insert into album
values (1, 'Imagine', 'Apple', '1979-9-9', 9.99);

insert into album (albumTitle, releaseDate, price, label)
values ('2525 (Exordium & Terminus)', '1969-7-1', 25.99, 'RCA');

select * from album;
