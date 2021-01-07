use personaltrainer;

/*
Select FirstName, LastName, and BirthDate from Client and EmailAddress from Login where Client.BirthDate is in the 1990s.

Join the tables by their key relationship.

What is the primary-foreign key relationship?
35 rows
*/

select 
	Client.FirstName,
    Client.LastName,
    Client.BirthDate,
    Login.EmailAddress
from client
inner join Login on Client.ClientId = Login.ClientId
where Client.BirthDate >= '1990-01-01' and Client.BirthDate < '2000-01-01';

select 
	count(client.clientId) as Count
from client
inner join Login on Client.ClientId = Login.ClientId
where Client.BirthDate >= '1990-01-01' and Client.BirthDate < '2000-01-01';