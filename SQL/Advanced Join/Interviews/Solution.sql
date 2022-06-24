SELECT CON.contest_id, CON.hacker_id, CON.name, 
       SUM(ts) as ts, SUM(tas) as tas, SUM(tv) as tv, SUM(tuv) as tuv
FROM CONTESTS AS CON
LEFT JOIN COLLEGES AS COLL ON CON.contest_id = COLL.contest_id
LEFT JOIN CHALLENGES AS CHALL ON COLL.college_id = CHALL.college_id
LEFT JOIN 
    (
        SELECT challenge_id, SUM(total_views) AS tv, SUM(total_unique_views) as tuv
        FROM View_Stats
        GROUP BY challenge_id
    ) AS A ON CHALL.challenge_id = A.challenge_id
LEFT JOIN
    (
        SELECT challenge_id, SUM(total_submissions) AS ts, SUM(total_accepted_submissions) as tas
        FROM Submission_Stats
        GROUP BY challenge_id
    ) as B ON CHALL.challenge_id = B.challenge_id
GROUP BY CON.contest_id, CON.hacker_id, CON.name
HAVING (ts + tas + tv + tuv > 0)
ORDER BY CON.contest_id;