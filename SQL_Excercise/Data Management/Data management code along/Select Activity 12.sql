use personaltrainer;

-- How many Logins do NOT have a .com EmailAddress? (122 rows)

select
	EmailAddress
From login
where EmailAddress not like '%.com';

select
	count(clientId) as Count
From login
where EmailAddress not like '%.com';