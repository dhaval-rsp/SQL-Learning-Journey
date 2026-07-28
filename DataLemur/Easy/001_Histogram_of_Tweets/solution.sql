-- HISTOGRAM means count of counts - how many 2 tweets occured [these 2 tweet is grouped by user]

SELECT 
    tweet_count_per_user AS tweet_bucket, -- take number of tweets 1,2,3
    COUNT(*) AS users_num --

FROM 
    (SELECT 
        user_id,
        COUNT(*) AS number_of_tweet_per_user
        
    FROM tweets
    
    WHERE tweet_date >= '2022-01-01'
      AND tweet_date <  '2023-01-01'
    
	GROUP BY user_id -- user_id grouped to find number of tweets per user_id
    ) AS tweets_per_user -- subquery to get user wise number of tweet

GROUP BY tweet_count_per_user -- grouping same number of tweets done by user together
ORDER BY tweet_bucket;
