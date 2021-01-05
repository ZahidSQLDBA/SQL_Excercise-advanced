use vinylrecordshop;

set SQL_SAFE_UPDATES = 0;

update album
	set albumId = 5
where albumTitle = 'Clouds';

update album
	set albumId = 9
where albumTitle = 'Smiley Smile';

set SQL_SAFE_UPDATES = 1;

Select * From album;