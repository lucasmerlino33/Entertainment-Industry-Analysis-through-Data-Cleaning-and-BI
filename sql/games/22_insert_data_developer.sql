--Inserts data from "games_raw" into "games_dim_developer" and seperates the values with ";"
--json_each() separates the list format from the column
--json_quote() eliminates special characters like "", which was generating problems with the json_each()
--it was necessary to normalize splits due to several registers being separated by "," instead of ";"
--TRIM() to eliminate spaces

--SELECT developer FROM games_raw WHERE developer LIKE '%"%';
--SELECT developer FROM games_raw WHERE developer IS NULL;
--SELECT developer FROM games_raw WHERE developer = '';

INSERT INTO games_dim_developers (developer_name)

SELECT DISTINCT
TRIM(value)

FROM games_raw,
json_each(
'[' ||
REPLACE(
REPLACE(json_quote(developer), ',', ';'),
';',
'","'
)
|| ']'
)

WHERE developer IS NOT NULL;