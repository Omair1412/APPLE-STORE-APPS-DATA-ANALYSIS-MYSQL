--CHECK_IF_THERE_IS_A_CORRELATION_BETWEEN_APP_DESCRIPTION_LENGTH_AND_USER_RATING 
SELECT CASE
WHEN length(b.app_desc) <500 THEN 'SHORT'
WHEN length(b.app_desc) BETWEEN 500 AND 1000 THEN 'MEDIUM'
ELSE 'LONG'
END AS description_length_bucket,
avg(a.user_rating) AS average_rating

FROM AppleStore AS a
JOIN applestore_description AS b
ON  a.id = b.id

GROUP BY description_length_bucket
ORDER BY average_rating DESC