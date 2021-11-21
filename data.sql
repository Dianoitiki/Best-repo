CREATE EXTENSION file_fdw;

CREATE SERVER mydatasrv FOREIGN DATA WRAPPER file_fdw;

CREATE FOREIGN TABLE mydata (x INTEGER,y INTEGER)
	SERVER mydatasrv
	OPTIONS (filename '/home/postgres/data.csv',format 'csv');

SELECT * FROM mydata;
