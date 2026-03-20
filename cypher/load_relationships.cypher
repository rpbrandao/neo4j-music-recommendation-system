
LOAD CSV WITH HEADERS FROM 'file:///listens.csv' AS row
MATCH (u:User {id: row.user_id})
MATCH (t:Track {id: row.track_id})
CREATE (u)-[:LISTENED {count: toInteger(row.playcount)}]->(t);

LOAD CSV WITH HEADERS FROM 'file:///likes.csv' AS row
MATCH (u:User {id: row.user_id})
MATCH (t:Track {id: row.track_id})
CREATE (u)-[:LIKED]->(t);

LOAD CSV WITH HEADERS FROM 'file:///follows.csv' AS row
MATCH (u:User {id: row.user_id})
MATCH (a:Artist {id: row.artist_id})
CREATE (u)-[:FOLLOWS]->(a);
