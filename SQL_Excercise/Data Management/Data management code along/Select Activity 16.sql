use personaltrainer;

-- Select FirstName, LastName, City from Clients whose LastName starts with L,M, or N and who live in LaPlace. (5 rows)

Select 
	FirstName,
    LastName,
    City
From Client
Where (lastname Like 'L%' or lastname Like 'M%' or lastname Like 'N%') and City = 'LaPlace';