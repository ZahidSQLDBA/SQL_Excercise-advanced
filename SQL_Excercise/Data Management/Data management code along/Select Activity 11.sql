use personaltrainer;

-- How many rows in the Login table have a .gov EmailAddress? (17 rows)

select 
	EmailAddress
From login
where emailaddress like '%.gov';

select 
	Count(ClientId) as Count
From login
where emailaddress like '%.gov';