SELECT submission_date,
    (
        SELECT count(DISTINCT hacker_id)   
        FROM Submissions SUB  
        WHERE SUB.submission_date = t1.submission_date 
        AND (
            SELECT count(DISTINCT SUB1.submission_date) 
            FROM Submissions SUB1   
            WHERE SUB1.hacker_id = SUB.hacker_id AND SUB1.submission_date < t1.submission_date) = datediff(t1.submission_date , '2016-03-01'
        )
    ),
    (
        SELECT hacker_id  
        FROM Submissions SUB 
        WHERE SUB.submission_date = t1.submission_date 
        GROUP BY hacker_id 
        ORDER BY count(submission_id) DESC , hacker_id 
        LIMIT 1
    ) AS h_id,
    (
        SELECT name 
        FROM Hackers 
        WHERE hacker_id = h_id
    )
FROM (
        SELECT DISTINCT submission_date 
        FROM Submissions
    ) AS t1
GROUP BY submission_date;