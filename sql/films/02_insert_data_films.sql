-- Inserts original data in clean table, CAST() may give some NULL values
-- "Release Group" goes with "" because of SQL being uncapable of reading spaces. In the raw database, the column has this error
-- CAST() converts a value of one data type into a specified target data type

INSERT INTO films (
    title,
    year,
    worldwide_revenue,
    domestic_revenue,
    foreign_revenue,
    domestic_share,
    foreign_share,
    rating,
    vote_count,
    original_language
)

SELECT
    "Release Group",
    Year,
    CAST(REPLACE(REPLACE("$Worldwide",'$',''),',','') AS INTEGER),
    CAST(REPLACE(REPLACE("$Domestic",'$',''),',','') AS INTEGER),
    CAST(REPLACE(REPLACE("$Foreign",'$',''),',','') AS INTEGER),
	
    CAST(REPLACE("Domestic %",'%', '') AS REAL),
    CAST(REPLACE("Foreign %",'%', '') AS REAL),
	
    CAST(REPLACE(Rating,'/10','') AS REAL),
	
    Vote_Count,
    Original_Language

FROM films_raw;