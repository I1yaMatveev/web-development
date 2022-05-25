USE university;

SELECT
	s.id AS Id,
	s.name AS Имя,
    s.surename AS Фамилия,
    s.age AS Возраст
FROM
	student s
WHERE 
	s.age = 19;