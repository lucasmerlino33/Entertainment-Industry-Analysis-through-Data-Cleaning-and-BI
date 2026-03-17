BEGIN TRANSACTION;

-- bridge developers

INSERT INTO games_bridge_developers (game_id, developer_id)

SELECT DISTINCT
g.appid,
d.developer_id

FROM games_raw g,
json_each(
'[' ||
REPLACE(
REPLACE(json_quote(g.developer), ',', ';'),
';',
'","'
)
|| ']'
) j

JOIN games_dim_developers d
ON TRIM(j.value) = d.developer_name

WHERE g.developer IS NOT NULL
AND TRIM(j.value) <> '';

-- bridge platforms

INSERT INTO games_bridge_platforms (game_id, platform_id)

SELECT
g.appid,
platform_id

FROM games_raw g,
json_each(
'["' || REPLACE(g.platforms,';','","') || '"]'
) j

JOIN games_dim_platforms p
ON TRIM(j.value) = p.platform_name;

-- bridge publishers

INSERT INTO games_bridge_publishers (game_id, publisher_id)

SELECT DISTINCT
g.appid,
d.publisher_id

FROM games_raw g,
json_each(
'[' ||
REPLACE(
REPLACE(json_quote(g.publisher), ',', ';'),
';',
'","'
)
|| ']'
) j

JOIN games_dim_publisher d
ON TRIM(j.value) = d.publisher_name

WHERE g.publisher IS NOT NULL
AND TRIM(j.value) <> '';

-- bridge categories

INSERT INTO games_bridge_categories (game_id, category_id)

SELECT
g.appid,
category_id

FROM games_raw g,
json_each(
'["' || REPLACE(g.categories,';','","') || '"]'
) j

JOIN games_dim_categories p
ON TRIM(j.value) = p.category_name;

-- bridge genres

INSERT INTO games_bridge_genres (game_id, genre_id)

SELECT
g.appid,
ge.genre_id

FROM games_raw g,
json_each(
'["' || REPLACE(g.genres,';','","') || '"]'
) j

JOIN games_dim_genres ge
ON TRIM(j.value) = ge.genre_name;

COMMIT