SELECT H.hacker_id, H.name, SUM(score_max) total_score
FROM (
    SELECT hacker_id, challenge_id, MAX(score) score_max
    FROM Submissions 
    GROUP BY hacker_id, challenge_id
)ti INNER JOIN Hackers H ON H.hacker_id = ti.hacker_id
GROUP BY H.hacker_id, H.name
HAVING total_score != 0
ORDER BY total_score DESC, H.hacker_id