USE university;

SELECT
	g.name AS Class,
    f.name AS Faculty
FROM
	student s
LEFT JOIN class g ON s.id_class = g.id
LEFT JOIN faculty f ON g.id_faculty = f.id
WHERE
	s.name = 'Илья' AND s.surename = 'Матвеев';