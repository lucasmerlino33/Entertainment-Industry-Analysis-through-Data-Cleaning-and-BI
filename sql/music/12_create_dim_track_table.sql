--Creates the second dimension table, in order to have "track_id" for the future fact table, functioning as a FK
--ROW_NUMBER() assings a unique number for each row/line
--SELECT DISTINCT in order to avoid duplicates

CREATE TABLE music_dim_tracks AS

SELECT
ROW_NUMBER() OVER () AS track_id,
track_name

FROM (
    SELECT DISTINCT Track AS track_name
    FROM music_raw
);