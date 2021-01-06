use personaltrainer; 

-- Select all columns from Client where the City is Metairie. (29 rows)

Select * from Client where city = 'Metairie';
Select count(clientId) as count from Client where city = 'Metairie';