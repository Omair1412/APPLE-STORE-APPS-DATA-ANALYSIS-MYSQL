--CREATE_SCHEMA_AND_UPLOAD_THE_CSV_FILES_AS_TABLES
CREATE SCHEMA apple;
--CHECKING_FOR_ANY_MISSING_VALUES_IN_KEY_FIELDS
SELECT COUNT(DISTINCT id) AS UniqueAppIDs
FROM applestore_description

SELECT COUNT(*) AS MissingValues
FROM AppleStore
WHERE track_name IS null OR prime_genre IS null

SELECT COUNT(*) AS MissingValues
FROM applestore_description
WHERE app_desc IS null 

--FIND_OUT_THE_NUMBER_OF_APPS_PER_GENRE
SELECT prime_genre AS NumApps
FROM applestore
GROUP BY prime_genre
ORDER BY NumApps DESC

--GET_AN_OVERVIEW_OF_APPS_RATING
SELECT min(user_rating) AS MinRating,
       max(user_rating) AS MaxRating,
       avg(user_rating) AS AvgRating
FROM applestore