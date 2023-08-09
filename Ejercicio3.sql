SELECT hackers.hacker_id,  hackers.name, SUM(submissions.score) as total
FROM submissions
JOIN hackers ON submissions.hacker_id = hackers.hacker_id
GROUP BY submissions.hacker_id, hackers.name
HAVING total>0
ORDER BY total DESC, submissions.hacker_id;
