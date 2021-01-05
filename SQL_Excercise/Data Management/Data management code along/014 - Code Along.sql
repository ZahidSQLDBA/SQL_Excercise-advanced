use vinylrecordshop;

delete from album 
where albumId = 5;

insert into album (albumTitle, releaseDate, price, label)
values ("Clouds", '1969-5-1', 9.99, 'Reprise');

select * from album;