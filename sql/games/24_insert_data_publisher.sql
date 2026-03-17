--Inserts data from "games_raw" into "games_dim_publisher" and seperates the values with ";"
--json_each() separates the list format from the column
--json_quote() eliminates special characters like "", which was generating problems with the json_each()
--it was necessary to normalize splits due to several registers being separated by "," instead of ";" and NULL values
--TRIM() to eliminate spaces

--SELECT publisher FROM games_raw WHERE publisher LIKE '%"%';
--SELECT publisher FROM games_raw WHERE publisher IS NULL;
--SELECT publisher FROM games_raw WHERE publisher = '';

INSERT INTO games_dim_publisher (publisher_name)

SELECT DISTINCT
TRIM(value)

FROM games_raw,
json_each(
'[' ||
REPLACE(
REPLACE(json_quote(publisher), ',', ';'),
';',
'","'
)
|| ']'
)

WHERE publisher IS NOT NULL;