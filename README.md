
# Neo4j Music Recommendation System

Graph-based music recommendation system using Neo4j.

## Nodes
User
Track
Artist
Genre

## Relationships
User LISTENED Track
User LIKED Track
User FOLLOWS Artist
Track BY_ARTIST Artist
Track IN_GENRE Genre

## How to Run

1 Start Neo4j Desktop

2 Copy CSV files into the Neo4j import folder

3 Run scripts in order:

create_constraints.cypher
load_nodes.cypher
load_relationships.cypher

4 Run recommendation queries
