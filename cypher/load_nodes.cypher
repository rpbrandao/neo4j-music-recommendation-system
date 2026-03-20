
LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS row
CREATE (:User {id: row.id, name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///artists.csv' AS row
CREATE (:Artist {id: row.id, name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///genres.csv' AS row
CREATE (:Genre {id: row.id, name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///tracks.csv' AS row
MATCH (a:Artist {id: row.artist_id})
MATCH (g:Genre {id: row.genre_id})
CREATE (t:Track {id: row.id, title: row.title})
CREATE (t)-[:BY_ARTIST]->(a)
CREATE (t)-[:IN_GENRE]->(g);
