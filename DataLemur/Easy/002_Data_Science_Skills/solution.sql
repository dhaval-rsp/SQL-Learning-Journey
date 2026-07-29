SELECT
    candidate_id
FROM candidates
WHERE skill in 
    ( 'Python', 'Tableau', 'PostgreSQL' ) -- filtering by required skills
GROUP BY candidate_id -- grouping candidate_id to get unique id
HAVING count(skill) = 3 -- checking skill count should be