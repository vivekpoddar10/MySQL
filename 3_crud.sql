use mysqlcodes;

-- CRUD operation in dB

-- R - Reading data from dB
-- Syntax:
--  	SELECT <col_name> <col_name> .. <col_name> 
-- 		FROM <table_name>
-- 		WHERE <conditions>
SELECT * FROM cat; 

SELECT cat_id, name, age FROM cat;

SELECT cat_id as id, name, age 
FROM cat 
where breed = 'Tabby';

-- U - Update data in dB
-- Syntax:
--	   UPDATE <table_name> 
--     SET <col_name> = <Value>
--     WHERE <conditions>
update cat set breed = 'Road Side'
where breed = 'Tabby';

-- D - Delete data from dB
-- Syntax:
-- 		DELETE FROM <table_name>; -- it will delete all the rows, i.e table will be empty

-- 		DELETE FROM <table_name> 
-- 		WHERE <conditions>;
DELETE FROM cat
WHERE age = cat_id;

DELETE FROM cat;


    


    
    
