
-- Strings function in sql

-- Concating strings
-- Syntax: 
-- 	CONCAT(<str1>, <seperator> ,<str_2>); // if any argument is null, outpuut will be null
-- 	CONCAT_WS(<seperator>, <str1>, <str2>); // if any argument is null, it will be neglected
SELECT 
CONCAT(author_fname, ' ', author_lname)
from books;

SELECT
CONCAT_WS(' ', author_fname, author_lname)
from books;

-- Finding substrings
-- Syntax: SUBSTR(<str>, <pos>, <len>);
-- <len> is optional argument, it is used for specifying the length of substring. If not specified then substring will be printed till last character
-- <pos> argument is used for specifying the starting position of substring from string
SELECT 
SUBSTR('Hello World', 2); -- output: 'ello World'

SELECT
SUBSTR('Hello World', 2, 5); -- output: 'ello '

SELECT
SUBSTR('Hello World', -2, 5); -- output: 'ld'

-- Finding Length
-- char_length(), length() - both returns the length, but length() returns the length according the bit/ space taken in memory. So it may give
-- unexpected result. 
-- char_length() just counts the number of characters in the string
-- Syntax: CHAR_LENGTH(<str>);
SELECT CHAR_LENGTH('Hello World');

SELECT LENGTH('Hello World');

-- Reverse String
SELECT REVERSE('Hello World');

-- Replace string
-- Syntax: REPLACE(<str>, <str_to_be replaced>, <new_str_which_will_replace>)
-- It is case sensitive
SELECT REPLACE('Hello World', 'o', '*'); -- output: Hell* W*rld

-- change case
-- Syntax: UPPER(<str>);
-- 		   LOWER(<str>);
