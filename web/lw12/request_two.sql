USE university;

SELECT
	s.name AS Name,
    s.surename AS Surename,
    s.age AS Age, 
    g.name AS Class
FROM
	student s
LEFT JOIN class g ON s.id_class = g.id
WHERE
	g.name = 'ПС-12';