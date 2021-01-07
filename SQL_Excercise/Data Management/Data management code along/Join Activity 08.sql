use personaltrainer; 

select 
	Client.FirstName,
    Client.LastName
From Client
inner join login on login.ClientId = Client.ClientId
where Client.FirstName = 'Romeo' and Client.LastName = 'Seaward';