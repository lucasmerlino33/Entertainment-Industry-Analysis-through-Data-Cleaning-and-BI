-- Creates clean films table

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