use cryptopanic_db;
SELECT 
    t1.id, 
    t1.title, 
    t1.newsDatetime, 
    GROUP_CONCAT(t3.code) AS currencies
FROM 
    cryptopanic_news AS t1
INNER JOIN 
    news__currency AS t2 ON t1.id = t2.newsId
INNER JOIN 
    currency AS t3 ON t2.currencyId = t3.id
GROUP BY 
    id, title,newsDatetime;


