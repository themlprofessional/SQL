-- Filter Clause (Only applicable in PostgreSQL)
-- They filter the input data to an aggregation function
-- Where clause can be used once, whereas multiple filter clauses can be used in a query

-- Syntax
/*
EXPRESSION
AGGREGATION FUNCTION 1
FILTER (WHERE CLAUSE)
AGGREGATION FUNCTION 2
FILTER (WHERE CLAUSE)
.
.
.
EXPRESSION
*/

CREATE TABLE TEST
(ID INT PRIMARY KEY NOT NULL UNIQUE,
NAME TEXT NOT NULL,
EMPLOYED BOOL);

INSERT INTO TEST
(id, name, employed)
VALUES(1, 'Drake Maverick', '1'),
(2, 'Nancy Peloski', '0'),
(3, 'Anakin Skywalker', '0'),
(4, 'Uchiha Obito', '1');

SELECT COUNT(ID)
FILTER(WHERE ID!=2),
AVG(LENGTH(NAME))
FILTER(WHERE LENGTH(NAME)>4)
FROM TEST;

-- Example of applying FILTER condition on groups
SELECT ID, COUNT(ID)
FILTER(WHERE ID > 1) FROM
TEST GROUP BY ID HAVING
ID < 6 ORDER BY ID;


