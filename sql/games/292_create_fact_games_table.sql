-- Creates clean dimension table for games
-- Creates a new column named "owners_estimated". It was needed in order to normalize the number and make calculations

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