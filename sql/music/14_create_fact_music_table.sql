--Creates fact table for "music"
--Excludes NULL values from "Views" and "Likes" due to avoid unnecesary rows
--Creates new column "interactions" (comments + likes)
--Eliminates unnecesary columns: "EnergyLiveness", "Stream", "official_video", "Album_type"

CREATE TABLE music_fact AS

SELECT
t.track_id,
a.artist_id,
c.channel_id,

CAST(r.Views AS INTEGER) AS views,
CAST(r.Likes AS INTEGER) AS likes,
CAST(r.Comments AS INTEGER) AS comments,

CAST(r.Likes AS INTEGER) + CAST(r.Comments AS INTEGER) AS interactions

FROM music_raw r

JOIN music_dim_tracks t
ON r.Track = t.track_name

JOIN music_dim_artists a
ON r.Artist = a.artist_name

JOIN music_dim_channels c
ON r.Channel = c.channel_name

WHERE r.Views IS NOT NULL
AND r.Likes IS NOT NULL;