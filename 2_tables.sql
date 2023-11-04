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

-- not null and default values
-- NOT NULL is used to state that the column can't be empty, it is must to have a value
-- DEFAULT <value> is used to specify the <value> if user doesn't enter any data inside the column
-- PRIMARY KEY is used to uniquly identify the rows inside the column
-- AUTO_INCREMENT is used to automatically increase the values
-- e.g.
CREATE TABLE employee (
	id int PRIMARY KEY AUTO_INCREMENT, -- there will be unique id for each row, ant it can't be null, and it will automatically increase
    first_name VARCHAR(10) NOT NULL, -- these column will must have data, can't be left empty
    middle_name VARCHAR(10),
    last_name VARCHAR(10) NOT NULL,
    age INT NOT NULL DEFAULT 22, -- if user doesn't enter any value, then the default value will be shown in the column
    current_status VARCHAR(10) NOT NULL DEFAULT 'Employeed'
);


