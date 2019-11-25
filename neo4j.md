## Properties
schema optional

## Neo4j Introduction
* [introduction to Neo4j and graph databases](https://www.youtube.com/watch?v=oRtVdXvtD3o)
* 

## Python Libraries
* [py2neo](https://py2neo.org/v4/index.html)

## Cypher Query Language (CQL)
### A. Properties
* declarative
* expressive
* pattern-matching
### B. Links
* [Cypher manual](https://neo4j.com/docs/cypher-manual/current/introduction/)
* [CQL cheat sheet](https://gist.github.com/DaniSancas/1d5265fc159a95ff457b940fc5046887)
### C. Basics
1. structure elements
`(...)` - for nodes
`[...]` - for relationships (i.e. edges)
```Cypher
() -[]-> ()
() <-[]- ()
() -[]- ()
```
2. keywords & variables
e.g. ```
MATCH (p:Person)-[r:ACTED_IN]->(m:Movie)
RETURN p, r, m
```
```
MATCH path = (p:Person)-[r:ACTED_IN]->(m:Movie)
RETURN path                                                                   
```
MATCH, RETURN - keywords (case insensitive)
p, r, m, path - variables
3. output types
```
MATCH (p:Person)
RETURN p
```
outputs collection of nodes with label `Person`
```
MATCH (p:Person)                        
RETURN p.age, p.height
```
outputs a table of Persons and matching age and hight.
4. unique constraints & indices
```
CREATE CONSTRAINT ON (l:Label)
ASSERT l.property IS UNIQUE
ASSERT EXISTS l.property
```
```                              
CREATE CONSTRAINT ON ()-[r:RELATIONSHIP]->()
ASSERT EXISTS (r.property)
```
```
CREATE INDEX ON :Label
CREATE INDEX ON property
```
### D. Using Cypher with iPython
* [iPython Cypher extension](https://ipython-cypher.readthedocs.io/en/latest/)
1. enable CypherMagic
```python
%load_ext cypher
```
2. get CypherMagic parameters
```python
%config CypherMagic
```
3. change default uri
```python
uri = f'http://neo4j:password@localhost:7474/db/data'
%config CypherMagic.uri = uri
```
4. run query using CypherMagic
```python
foo = %cypher MATCH (n) RETURN count(n)
```
