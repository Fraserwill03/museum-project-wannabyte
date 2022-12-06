USE ART_MUSEUM;


-- 2: Basic Retrieval
SELECT ID_no, Paint_type, Drawn_on, Style
FROM painting;


-- 3: Retrieval with ordered results
SELECT Lname, Fname, Year_born
FROM artist 
ORDER BY Year_born;

-- 4: Nested Retrieval Query
SELECT Fname, Lname
FROM artist
WHERE Fname IN (
	SELECT AFname
    FROM art_object
    WHERE ID_no IN (
		SELECT ID_no
        FROM painting
        WHERE Paint_type = 'Oil'
	)
);

-- Same as above but not nested and has column with oil
SELECT a.Fname, a.Lname, p.Paint_type
FROM artist AS a, painting AS p, art_object AS o
WHERE a.Fname = o.AFname
AND o.ID_no = p.ID_no
AND p.Paint_type = 'Oil';

-- Joined Table Query
SELECT
    borrowed.ID_no AS ID_no,
    collections.CType AS Collection_type
FROM borrowed
JOIN collections ON borrowed.Borrowed_from = collections.CName;

-- 6: Update operation
UPDATE art_object
SET Country_of_origin = 'Canada'
WHERE ID_no = 010;

SELECT Country_of_origin
FROM art_object
WHERE ID_no = 010;

-- 7: Deletion (using custom trigger to delete from both tables)
DELETE FROM sculpture 
WHERE ID_no = '001';

SELECT * FROM sculpture;
SELECT * FROM art_object;

-- Additional update to show use of custom trigger
UPDATE painting SET ID_no = '100'
WHERE ID_no = '003';

SELECT * FROM painting;

-- Joined Table Query
SELECT
    borrowed.ID_no AS ID_no,
    collections.CType AS Collection_type
FROM borrowed
JOIN collections ON borrowed.Borrowed_from = collections.CName;


-- Deletion Operation
DELETE FROM sculpture 
WHERE ID_no = '001';


-- Show all primary keys from each table 
SELECT
	t.table_name,
    s.column_name AS PK_name
FROM information_schema.tables AS t
INNER JOIN information_schema.statistics AS s
        ON s.table_schema = t.table_schema
        AND s.table_name = t.table_name
WHERE t.table_schema = 'art_museum'
ORDER BY t.table_name;


-- Show all triggers from each table
SELECT event_object_table AS table_name,
       trigger_name,
       action_timing,
       event_manipulation AS trigger_event,
		action_statement AS 'definition'
FROM information_schema.triggers 
WHERE trigger_schema NOT IN ('sys','mysql')
ORDER BY table_name;


-- Show all foreign keys and referenced column + table
select table_name, column_name, constraint_name, referenced_column_name, referenced_table_name
   from information_schema.key_column_usage
   WHERE referenced_table_schema = 'art_museum';