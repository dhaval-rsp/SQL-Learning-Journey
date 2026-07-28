###  `Q.` 🔗 https://datalemur.com/questions/sql-histogram-tweets

```
This is the same question as problem #6 in the SQL Chapter of Ace the Data Science Interview!

Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022.
Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
```

### 📋 `tweets Table`
| Column Name | Type |
|------------|---------|
| tweet_id | integer |
| user_id | integer |
| msg | string |
| tweet_date | timestamp |

### 📥 `tweets Example Input`

| tweet_id | user_id | msg | tweet_date |
|---------:|--------:|-----|------------|
| 214252 | 111 | Am considering taking Tesla private at $420. Funding secured. | 12/30/2021 00:00:00 |
| 739252 | 111 | Despite the constant negative press covfefe | 01/01/2022 00:00:00 |
| 846402 | 111 | Following @NickSinghTech on Twitter changed my life! | 02/14/2022 00:00:00 |
| 241425 | 254 | If the salary is so competitive why won't you tell me what it is? | 03/01/2022 00:00:00 |
| 231574 | 148 | I no longer have a manager. I can't be managed | 03/23/2022 00:00:00 |

### 📤 `Example Output`

| tweet_bucket | users_num |
|-------------:|----------:|
| 1 | 2 |
| 2 | 1 |

### 🔗[`Solution.sql`](https://github.com/dhaval-rsp/SQL-Learning-Journey/blob/0d9073d9efb57e4aee7f5658e771c61c501781c5/DataLemur/Easy/001_Histogram_of_Tweets/solution.sql) 

### 🧠 `Thought Process for solution`
Question language is pretty simple - let us break down in steps
- twitter table is given
- need to obtain histogram of tweets
- what type of histogram of tweet? - tweets posted per user
- output columns:- be tweet count per user | number of twitter user 

`What is histogram?` - understanding this part makes you understand the entire question
- since in question it self given that we need to find tweets posted per user, this might seems simple and we would think LIKE
	- user_id 1 posted 5 tweets
	- user_id 2 posted 10 tweets 
	- user_id 3 posted 5 tweets 
	- user_id 4 posted 10 tweets
- but the question here demands histogram, so instead this simple statistics it is asking for that `how many 10 tweets` posted `by` `how many user?` or `how many 5 tweets` by `how many user` this is whast histogram is
  - histogram represent frequency or distribution of quantitative data
  - here our histogram would be number of tweets vs number of user
  - there are 2 users who tweeted 10 times || there are 2 users who tweeted 5 times

      | tweet_bucket | users_num |
      |-------------:|----------:|
      | 10 | 2 |
      | 5 | 2 |
    
### 🖼️ Visual Explanation

### 🚀 `Alternative Solution`

### 💡 `Interview Takeaways`
