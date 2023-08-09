SELECT hackers.hacker_id, hackers.name
FROM hackers
JOIN challenges ON hackers.hacker_id = challenges.hacker_id 
JOIN submissions ON challenges.challenge_id = submissions.challenge_id 
JOIN difficulty ON difficulty.difficulty_level = challenges.difficulty_level
WHERE submissions.score = difficulty.score
GROUP BY hackers.hacker_id, hackers.name
HAVING COUNT(challenges.challenge_id )>1
ORDER BY COUNT(challenges.challenge_id ) DESC, hackers.hacker_id;
