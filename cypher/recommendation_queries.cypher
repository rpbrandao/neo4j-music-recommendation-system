
MATCH (u:User {id:'u1'})-[:LISTENED]->(t:Track)-[:IN_GENRE]->(g:Genre)
MATCH (rec:Track)-[:IN_GENRE]->(g)
WHERE NOT (u)-[:LISTENED]->(rec)
RETURN rec.title AS recommended_track
LIMIT 5;
