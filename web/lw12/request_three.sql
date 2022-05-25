USE university;

SELECT
	s.id AS Id,
	s.name AS Name,
    s.surename AS Surename,
    s.age AS Age,
    g.name AS Class,
    f.name AS Faculty
FROM
	student s
LEFT JOIN class g ON s.id_class = g.id
LEFT JOIN faculty f ON g.id_faculty = f.id
WHERE
	f.name = 'ИВТ';