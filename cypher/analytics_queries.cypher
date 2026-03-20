
MATCH (:User)-[:LISTENED]->(t:Track)-[:BY_ARTIST]->(a:Artist)
RETURN a.name AS artist, count(*) AS plays
ORDER BY plays DESC
LIMIT 5;
