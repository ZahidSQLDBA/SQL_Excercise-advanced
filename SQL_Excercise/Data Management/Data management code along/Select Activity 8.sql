use personaltrainer;

-- Select FirstName, LastName, and City from Client where City is Metairie, Kenner, or Gretna. (77 rows)

Select
	FirstName,
    LastName,
    City
From Client
where City = 'Metairie' or City = 'Kenner' or City = 'Gretna'; 

Select
	count(clientId) as count
From Client
where City = 'Metairie' or City = 'Kenner' or City = 'Gretna'; 
    