use personaltrainer;

-- Select FirstName, LastName, and BirthDate from Client for Clients born in the 1980s. (72 rows)

Select
	FirstName,
    LastName,
    BirthDate
From client
Where birthdate >= '1980-01-01' and birthdate < '1990-01-01';

Select
	count(clientId) as Count
From client
Where birthdate >= '1980-01-01' and birthdate < '1990-01-01';