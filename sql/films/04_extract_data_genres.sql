--Simple bridge
--Inserts data from "films" into "film_genre" and seperates the values with ","
--JOIN to conect "films_raw" (without "film_id") with "films"
--json_each() separates the list format from the column
--TRIM() to eliminate spaces

INSERT INTO film_genres (film_id, genre)

SELECT
    f.film_id,
    TRIM(value)

FROM films_raw r
JOIN films f
ON r."Release Group" = f.title,

json_each(
    '["' || REPLACE(r.Genres, ', ', '","') || '"]'
);