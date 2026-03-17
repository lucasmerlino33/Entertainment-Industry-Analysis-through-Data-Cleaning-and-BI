--Inserts data from "games_raw" into "games_dim_categories" and seperates the values with ";"
--json_each() separates the list format from the column
--TRIM() to eliminate spaces

INSERT INTO games_dim_categories (category_name)

SELECT DISTINCT
TRIM(value)

FROM games_raw,
json_each(
'["' || REPLACE(categories,';','","') || '"]'
);