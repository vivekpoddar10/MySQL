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

-- To Display all the tables in Db
SHOW TABLES;

-- To Display all the column specification, use any of the below commands
-- SHOW COLUMNS FROM <table_name>
-- DESCRIBE <table_name>
-- DESC <table_name>
DESC petshop;

-- To delete the specific table in dB
-- DROP TABLE <table_name>
DROP TABLE petshop;
