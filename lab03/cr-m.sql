DROP TABLE IF EXISTS men;

CREATE TABLE men(id INTEGER PRIMARY KEY, lname VARCHAR(50), fname VARCHAR(50),
mname VARCHAR(50), yob INTEGER, gender CHAR(1), wage DECIMAL,
wife INTEGER UNIQUE, children_count INTEGER);
