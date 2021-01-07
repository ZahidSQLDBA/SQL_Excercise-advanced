use personaltrainer;

/*
Are there Clients who are not signed up for a Workout?

50 rows
*/

Select
	Client.FirstName,
    Client.LastName
From client
left outer join clientworkout on clientworkout.ClientId = client.ClientId
where clientworkout.WorkoutId is null;

Select
	count(client.ClientId) as count
From client
left outer join clientworkout on clientworkout.ClientId = client.ClientId
where clientworkout.WorkoutId is null;