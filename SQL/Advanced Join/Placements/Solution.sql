SELECT S.name
FROM students S
JOIN friends F on S.id=F.id
JOIN packages P1 on S.id=P1.id
JOIN packages P2 on friend_id=P2.id
WHERE P1.salary < P2.salary
ORDER BY P2.salary;