--CHECK_TOP_RATED_APPS_FOR_EACH_GENRE
SELECT prime_genre,
       track_name,
       user_rating
FROM (
    SELECT 
        prime_genre,
        track_name,
        user_rating,
        RANK() OVER (PARTITION BY prime_genre ORDER BY user_rating DESC, rating_count_tot DESC) AS rnk
    FROM
        applestore
) AS ranked_apps
WHERE 
    ranked_apps.rnk = 1;
