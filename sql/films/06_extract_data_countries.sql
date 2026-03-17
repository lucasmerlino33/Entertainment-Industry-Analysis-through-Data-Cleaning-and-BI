--Simple bridge
--Inserts data from "films" into "film_countries" and seperates the values with ","
--JOIN to conect "films_raw" (without "film_id") with "films"
--json_each() separates the list format from the column
--TRIM() to eliminate spaces

INSERT INTO film_countries (film_id, country)

SELECT
    f.film_id,
    TRIM(value)

FROM films_raw r
JOIN films f
ON r."Release Group" = f.title,

json_each(
    '["' || REPLACE(r.Production_Countries, ', ', '","') || '"]'
);