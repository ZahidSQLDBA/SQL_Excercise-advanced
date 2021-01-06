use personaltrainer;

/*
Does the Client, Estrella Bazely, have a Login? If so, what is her email address?

This requires two queries:

Select a Client record for Estrella Bazely. Does it exist?
If it does, select a Login record that matches its ClientId.
*/

Select 
	ClientId
From Client
Where FirstName = 'Estrella' and LastName = 'Bazely';

Select
	EmailAddress
From Login
Where ClientId = '87976c42-9226-4bc6-8b32-23a8cd7869a5';

Select
	Login.ClientId,
    EmailAddress
From login
inner join Client on login.ClientId = Client.ClientId
where Client.FirstName = 'Estrella' and Client.LastName = 'Bazely';