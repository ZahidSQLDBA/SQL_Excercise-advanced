use vinylrecordshop;

Insert into album (albumTitle, releaseDate, price, label)
values 
	row ('Clouds', '1969-5-1', 9.99, 'Reprise'),
    row ('Sounds of Silence STudio Album', '1966-1-17', 9.99, 'Columbia'),
    row ('Abbey Road', '1969-1-10', 12.99, 'Apple'),
    row ('Smiley Smile', '1967-9-18', 5.99, 'Capitol');
    
Select * from album;