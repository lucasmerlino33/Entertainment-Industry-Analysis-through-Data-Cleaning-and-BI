--Creates the second dimension table, in order to have "channel_id" for the future fact table, functioning as a FK
--ROW_NUMBER() assings a unique number for each row/line
--SELECT DISTINCT in order to avoid duplicates

CREATE TABLE music_dim_channels AS

SELECT
ROW_NUMBER() OVER () AS channel_id,
channel_name

FROM (
    SELECT DISTINCT Channel AS channel_name
    FROM music_raw
);