--CHECK_IF_APPS_WITH_MORE_SUPPORTED_LANGUAGES_HAVE_HIGHER_RATINGS
SELECT CASE
WHEN lang_num < 10 THEN '<10 LANGUAGES'
WHEN lang_num BETWEEN 10 AND 10 THEN '10-10 languages'
ELSE '>10 languages'
END AS language_bucket,
avg(user_rating) AS Avg_Rating
FROM AppleStore
GROUP BY language_bucket
ORDER BY Avg_Rating DESC