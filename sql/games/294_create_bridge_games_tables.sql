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
