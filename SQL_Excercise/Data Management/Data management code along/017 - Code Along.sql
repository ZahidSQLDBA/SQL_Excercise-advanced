use vinylrecordshop;

SET GLOBAL local_infile = 1;
delete from artist where artistId < 15;

-- LOAD data local infile 'C:\mthree\SQL\SQL_Self_Paced\SQL_Excercise\Data Management\Data management code along\artist_adjusted.csv'

load data local infile 'C:/mthree/artist_adjusted.csv'
into table vinylrecordshop.artist
fields terminated by ',';

select * from artist;