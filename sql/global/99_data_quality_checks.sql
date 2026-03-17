
-- *Validiting values from fact, dim and bridge tables* (delete (--) to execute script)
-- Numbers has to have coherency (no extreme values)
-- Fact tables and raw tables have to be equal
-- Dim tables cannot have duplicates on their keys

--Verify for duplicates
--SELECT film_id, COUNT(*) FROM Films GROUP BY film_id HAVING COUNT(*) > 1;
--SELECT game_id, COUNT(*) FROM games_fact_sales GROUP BY game_id HAVING COUNT(*) > 1;
--SELECT track_id, COUNT(*) FROM music_dim_tracks GROUP BY track_id HAVING COUNT(*) > 1;
--SELECT artist_id, COUNT(*) FROM music_dim_artists GROUP BY artist_id HAVING COUNT(*) > 1;
--SELECT channel_id, COUNT(*) FROM music_dim_channels GROUP BY channel_id HAVING COUNT(*) > 1;

--Verify for NULLS
--SELECT * FROM Films WHERE worldwide_revenue IS NULL;
--SELECT * FROM music_fact WHERE views IS NULL;
--SELECT * FROM games_fact_sales WHERE price IS NULL;



--Films:

--SELECT COUNT(*) FROM films;
--SELECT COUNT(*) FROM films_raw;

--SELECT COUNT(*) FROM film_genre;
--SELECT COUNT(*) FROM film_countries;

--Music:

--SELECT COUNT(*) FROM music_raw;
--SELECT COUNT(*) FROM music_fact;

--SELECT COUNT(*) FROM music_dim_artists;
--SELECT COUNT(*) FROM music_dim_tracks;
--SELECT COUNT(*) FROM music_dim_channels;

--Games:

--SELECT COUNT(*) FROM games_fact_sales;
--SELECT COUNT(*) FROM games_raw WHERE strftime('%Y', release_date) < '2019';

--SELECT COUNT(*) FROM games_dim_developers;
--SELECT COUNT(*) FROM games_bridge_developers;

--SELECT COUNT(*) FROM games_dim_publisher;
--SELECT COUNT(*) FROM games_bridge_publishers;

--SELECT COUNT(*) FROM games_dim_platforms;
--SELECT COUNT(*) FROM games_bridge_platforms;

--SELECT COUNT(*) FROM games_dim_categories;
--SELECT COUNT(*) FROM games_bridge_categories;

--SELECT COUNT(*) FROM games_dim_genres;
--SELECT COUNT(*) FROM games_bridge_genres;

-- *General check* (must be "ok")

--PRAGMA integrity_check;