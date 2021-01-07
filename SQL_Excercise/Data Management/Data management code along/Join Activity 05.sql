use personaltrainer;

/*
Select Workout.Name, Client.FirstName, and Client.LastName for Clients with LastNames starting with 'C'?

How are Clients and Workouts related?
25 rows
*/

Select 
	Workout.Name,
    Client.FirstName,
    Client.LastName
From Client
inner join clientworkout on Client.ClientId = clientworkout.ClientId
inner join workout on workout.WorkoutId = clientworkout.WorkoutId
where Client.LastName like 'C%';

Select 
	Count(client.clientID) as Count
From Client
inner join clientworkout on Client.ClientId = clientworkout.ClientId
inner join workout on workout.WorkoutId = clientworkout.WorkoutId
where Client.LastName like 'C%';