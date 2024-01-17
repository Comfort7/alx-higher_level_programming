--Lists all cities of CA in the database htbn_0d_usa.
--Results are ordered by ascending cities.id.
SELECT 'id', 'name'
	FROM 'cities'
	WHERE 'states_id' IN
		(SELECT 'id'
			FROM 'states'
			WHERE 'name' = "California")
	ORDER BY 'id';
