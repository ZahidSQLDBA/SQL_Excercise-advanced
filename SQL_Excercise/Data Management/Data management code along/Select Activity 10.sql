use personaltrainer;

/*
Write the query above in a different way.

If you used BETWEEN, you can't use it again.
If you didn't use BETWEEN, use it!
The results should still have 72 rows.
*/
Select
	FirstName,
    LastName,
    BirthDate
From client
Where birthdate between '1980-01-01' and '1990-01-01';

Select
	count(clientId) as Count
From client
Where birthdate between '1980-01-01' and '1990-01-01';