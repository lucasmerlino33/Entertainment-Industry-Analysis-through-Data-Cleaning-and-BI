--Creates the first dimension table, in order to have "artist_id" for the future fact table, functioning as a FK
--ROW_NUMBER() assings a unique number for each row/line
--SELECT DISTINCT in order to avoid duplicates

CREATE TABLE music_dim_artists AS

SELECT
ROW_NUMBER() OVER () AS artist_id,
artist_name

FROM (
    SELECT DISTINCT Artist AS artist_name
    FROM music_raw
);