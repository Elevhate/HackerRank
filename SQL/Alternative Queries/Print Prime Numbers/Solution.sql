SELECT GROUP_CONCAT(num_b SEPARATOR '&')
FROM 
    (
        SELECT @num:=@num+1 as num_b
        FROM information_schema.tables t1, information_schema.tables t2,
        (
            SELECT @num:=1
        ) tmp
    ) a
WHERE num_b <= 1000 AND NOT EXISTS
    (
		SELECT *
        FROM
        (
			SELECT @nu:=@nu+1 as num_a
            FROM information_schema.tables t1, information_schema.tables t2, (SELECT @nu:=1) tmp1
			LIMIT 1000
		) b
		WHERE FLOOR(num_b / num_a) = (num_b / num_a)
            AND num_a < num_b
            AND num_a > 1
	)