-- Selecting the dB in which we will be creating the table
USE mysqlcodes;

-- Syntax to create table inside dB
-- 	CREATE TABLE <table_name> (
-- 		<col_name> <data_type> constraints,
--         ....
-- 	);
CREATE TABLE petShop (
	name VARCHAR(15),
    age INT,
    species VARCHAR(15)
);

-- Syntax to Display all the tables in Db
SHOW TABLES;

-- Syntax to Display all the column specification, use any of the below commands
-- SHOW COLUMNS FROM <table_name>
-- DESCRIBE <table_name>
-- DESC <table_name>
DESC petshop;

-- Syntax to delete the specific table in dB
-- DROP TABLE <table_name>
DROP TABLE petshop;

-- Syntax to insert values in table
-- INSERT INTO <table_name> (<col_name>, ... )
-- VALUES 
-- 	(<value1>, ... ),
-- 	(<value2>, ... );
INSERT INTO petshop (name, age, species)
VALUES
	('Oscar', 3, 'Dog'),
    ('Blue', 4, 'Cat');
    
