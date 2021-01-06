use personaltrainer;

-- Select first and last name of Clients without a BirthDate. (37 rows)

Select
	FirstName,
    LastName
From Client
where BirthDate is null;

Select
	count(clientId) as Count
From Client
where BirthDate is null;