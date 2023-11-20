--
-- ********************************** STRING FUNCTIONS ********************************
--

--
-- ---------------------- CONCATATION --------------------------------------------------
--

-- Syntax: 
-- 	CONCAT(<str1>, <seperator> ,<str_2>); // if any argument is null, outpuut will be null
-- 	CONCAT_WS(<seperator>, <str1>, <str2>); // if any argument is null, it will be neglected
SELECT 
CONCAT(author_fname, ' ', author_lname)
from books;

SELECT
CONCAT_WS(' ', author_fname, author_lname)
from books;

--
-- ----------------------- SUBSTRINGS --------------------------------------------------------
--

-- Syntax: SUBSTR(<str>, <pos>, <len>);
-- <len> is optional argument, it is used for specifying the length of substring. If not specified then substring will be printed till last character
-- <pos> argument is used for specifying the starting position of substring from string
SELECT 
SUBSTR('Hello World', 2); -- output: 'ello World'

SELECT
SUBSTR('Hello World', 2, 5); -- output: 'ello '

SELECT
SUBSTR('Hello World', -2, 5); -- output: 'ld'

-- SUBSTRING_INDEX(<str>, <sub_string>, <occurence>);
-- it will return the substring from start till the nth occurence of <sub_string>
SELECT SUBSTRING_INDEX('Hello World', 'l', 3); -- output: Hello Wor
SELECT SUBSTRING_INDEX('Hello World', 'l', 3); -- output: lo World

-- substring of specified length from start
-- Syntax: LEFT(<str>, <len>)
SELECT LEFT('Hello World', 3); -- output: hel

-- substring of specified length from end
-- Syntax: RIGHT(<str>, <len>)
SELECT RIGHT('Hello World', 5); -- output: World 

--
-- ----------------------- LENGTH --------------------------------------------------------
--

-- Finding Length
-- char_length(), length() - both returns the length, but length() returns the length according the bit/ space taken in memory. So it may give
-- unexpected result. 
-- char_length() just counts the number of characters in the string
-- Syntax: CHAR_LENGTH(<str>);
SELECT CHAR_LENGTH('Hello World');

SELECT LENGTH('Hello World');

--
-- ----------------------- REVERSE, REPLACE, REPEAT, TRIM --------------------------------------------------------
--

-- Reverse String
SELECT REVERSE('Hello World');

-- Replace string
-- Syntax: REPLACE(<str>, <str_to_be replaced>, <new_str_which_will_replace>)
-- It is case sensitive
SELECT REPLACE('Hello World', 'o', '*'); -- output: Hell* W*rld

-- Repeat string
-- Syntax: REPEAT(<str>, <times>)
SELECT REPEAT('Hello', 3); -- output: HelloHelloHello

-- Trim
-- Syntax: TRIM(LEADING <str_to_be_removed> from <str>);
-- 		   TRIM(TRAILLING <str_to_be_removed> from <str>);
-- 		   TRIM(BOTH <str_to_be_removed> from <str>
-- it enables us to to remove specified character/substring/spaces from starting/ending/both in string
-- if position is not specified, then substring will be removed from both sides
SELECT TRIM('  Hello  '); -- will remove spaces from both start and end
SELECT TRIM(BOTH ' ' FROM ' Hello  '); -- output: Hello

SELECT TRIM(LEADING ' ' FROM '  Hello  '); -- will remove spaces from start only
										   -- output: 'Hello  '

SELECT TRIM(TRAILING ' ' FROM '  Hello  '); -- will remove spaces from end only
											-- output: '  Hello'
--
-- ------------------------ CASE -------------------
--

-- Syntax: UPPER(<str>);
-- 		   LOWER(<str>);
SELECT UPPER('vivek'); -- output: VIVEK

SELECT LOWER('Vivek'); -- output: vivek


