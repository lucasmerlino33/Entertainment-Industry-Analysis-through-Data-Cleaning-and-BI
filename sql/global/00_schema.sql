-- *films*:

--films

CREATE TABLE films (
    film_id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    worldwide_revenue INTEGER,
    domestic_revenue INTEGER,
    foreign_revenue INTEGER,
    domestic_share REAL,
    foreign_share REAL,
    rating REAL,
    vote_count INTEGER,
    original_language TEXT
);

--film_genre

CREATE TABLE film_genres (
    film_id INTEGER,
    genre TEXT
);

--film_countries

CREATE TABLE film_countries (
    film_id INTEGER,
    country TEXT
);

-- *music*:

--music_dim_artists

CREATE TABLE music_dim_artists AS

SELECT
ROW_NUMBER() OVER () AS artist_id,
artist_name

FROM (
    SELECT DISTINCT Artist AS artist_name
    FROM music_raw
);

--music_dim_tracks

CREATE TABLE music_dim_tracks AS

SELECT
ROW_NUMBER() OVER () AS track_id,
track_name

FROM (
    SELECT DISTINCT Track AS track_name
    FROM music_raw
);

--music_dim_channels

CREATE TABLE music_dim_channels AS

SELECT
ROW_NUMBER() OVER () AS channel_id,
channel_name

FROM (
    SELECT DISTINCT Channel AS channel_name
    FROM music_raw
);

--music_fact

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

-- *games*:

--games_dim_developers

CREATE TABLE games_dim_developers (
    developer_id INTEGER PRIMARY KEY,
    developer_name TEXT
);

--games_dim_publishers

CREATE TABLE games_dim_publisher (
    publisher_id INTEGER PRIMARY KEY,
    publisher_name TEXT
);

--games_dim_platforms

CREATE TABLE games_dim_platforms (
    platform_id INTEGER PRIMARY KEY,
    platform_name TEXT
);

--games_dim_categories

CREATE TABLE games_dim_categories (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT
);

--games_dim_genres

CREATE TABLE games_dim_genres (
    genre_id INTEGER PRIMARY KEY,
    genre_name TEXT
);

--games_fact_sales

CREATE TABLE games_fact_sales (

game_id INTEGER PRIMARY KEY,
release_date DATE,
release_year INTEGER,
price REAL,
owners_estimated INTEGER,
positive_ratings INTEGER,
negative_ratings INTEGER,
average_playtime INTEGER

);

--bridge table games

-- bridge developers

CREATE TABLE games_bridge_developers (

game_id INTEGER,
developer_id INTEGER,

PRIMARY KEY (game_id, developer_id)

);

-- bridge publishers

CREATE TABLE games_bridge_publishers (

game_id INTEGER,
publisher_id INTEGER,

PRIMARY KEY (game_id, publisher_id)

);

-- bridge platforms

CREATE TABLE games_bridge_platforms (

game_id INTEGER,
platform_id INTEGER,

PRIMARY KEY (game_id, platform_id)

);

-- bridge categories

CREATE TABLE games_bridge_categories (

game_id INTEGER,
category_id INTEGER,

PRIMARY KEY (game_id, category_id)

);

-- bridge genres

CREATE TABLE games_bridge_genres (

game_id INTEGER,
genre_id INTEGER,

PRIMARY KEY (game_id, genre_id)

);
