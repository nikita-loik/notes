## Properties
schema optional

## Neo4j Introduction
* [graph databases & Neo4j](https://www.youtube.com/watch?v=oRtVdXvtD3o)
* [Neo4j cheat sheet](https://neo4j.com/docs/cypher-refcard/current/)

## Python-Driver Libraries
* [drivers manual](https://neo4j.com/docs/driver-manual/1.7/)
* [neo4j](https://github.com/neo4j/neo4j-python-driver)
* [py2neo](https://py2neo.org/v4/index.html)
* [neomodel](https://neomodel.readthedocs.io/en/latest/)

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

`(...)` - for nodes<br/>
`[...]` - for relationships (i.e. edges)

```Cypher
() -[]-> ()
() <-[]- ()
() -[]- ()
```

2. keywords & variables

```Cypher
MATCH (p:Person)-[r:ACTED_IN]->(m:Movie)
RETURN p, r, m
```

```Cypher
MATCH path = (p:Person)-[r:ACTED_IN]->(m:Movie)
RETURN path  
```

* MATCH, RETURN - keywords (case insensitive)
* p, r, m, path - variables

3. output types

3.a. get collection of nodes with label `Person`

```Cypher
MATCH (p:Person)
RETURN p
```

3.b. get a table of matching age and hight of each `Person`

```Cypher
MATCH (p:Person)
RETURN p.age, p.height
```

4. unique constraints & indices

```Cypher
CREATE CONSTRAINT ON (l:Label)
ASSERT l.property IS UNIQUE
ASSERT EXISTS l.property
```

``` Cypher
CREATE CONSTRAINT ON ()-[r:RELATIONSHIP]->()
ASSERT EXISTS (r.property)
```

```Cypher
CREATE INDEX ON :Label
CREATE INDEX ON property
```

### D. Using Cypher with iPython

#### [iPython Cypher extension](https://ipython-cypher.readthedocs.io/en/latest/)

1. enable CypherMagic

```python
%load_ext cypher
```

2. get CypherMagic parameters

```python
%config CypherMagic
```

3. change default URI (Uniform Resource Identifier)

```python
uri = f'http://neo4j:password@localhost:7474/db/data'
%config CypherMagic.uri = uri
```

4. run query using CypherMagic

```python
foo = %cypher MATCH (n) RETURN count(n)
```

# Browser

1. set max number of nodes to display

```Cypher
:config initialNodeDisplay: 1000
```
