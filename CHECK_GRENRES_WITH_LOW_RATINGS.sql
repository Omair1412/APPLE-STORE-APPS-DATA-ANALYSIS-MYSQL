--CHECK_GRENRES_WITH_LOW_RATINGS
SELECT prime_genre,
avg(user_rating) AS Avg_Rating
FROM AppleStore
GROUP BY prime_genre
ORDER BY Avg_Rating ASC
LIMIT 10
