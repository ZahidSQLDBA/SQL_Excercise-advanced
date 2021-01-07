use personaltrainer;
/*
Select FirstName and LastName from Client.
Select ClientId and EmailAddress from Login.
Join the tables, but make Login optional.
------------------------------------------------------------------------------
Using the query above as a foundation, select Clients who do not have a Login.

200 rows
*/
Select
	Client.FirstName as FirstName,
    Client.LastName as LastName,
    Login.ClientId as ClientId,
    Login.EmailAddress as EmailAddress
From client 
left outer join Login on Login.ClientId = Client.ClientId
where Login.ClientId is Null;

Select
    Count(Client.ClientId) as Count
From client 
left outer join Login on Login.ClientId = Client.ClientId
where Login.ClientId is Null;