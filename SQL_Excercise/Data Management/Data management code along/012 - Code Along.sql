use vinylrecordshop; 

insert into album (albumTitle, releaseDate, price, label)
values
	row ("No One's Gonna Change Our World", '1969-12-12', 39.95, 'Regal Starline'),
    row ('Moondance Studio Album', '1969-8-1', 14.99, 'Warner Bros');

Select * From album;