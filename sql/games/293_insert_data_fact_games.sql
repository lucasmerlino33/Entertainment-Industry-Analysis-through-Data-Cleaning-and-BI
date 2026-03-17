-- Substr() and instr() were necessary to calculate the estimated owners' quantity by searching values and extract them. Then, I calculate the avg to have an estimated value
-- 2019 was filtered to improve the analysis Year to Year
-- strftime() is useful to detect just the year of each date

INSERT INTO games_fact_sales (

game_id,
release_date,
release_year,
price,
owners_estimated,
positive_ratings,
negative_ratings,
average_playtime

)

SELECT

g.appid,

g.release_date,
strftime('%Y', g.release_date),

g.price,

(
CAST(substr(g.owners,1,instr(g.owners,'-')-1) AS INTEGER) +
CAST(substr(g.owners,instr(g.owners,'-')+1) AS INTEGER)
)/2,

g.positive_ratings,
g.negative_ratings,
g.average_playtime

FROM games_raw g

WHERE strftime('%Y', g.release_date) < '2019';