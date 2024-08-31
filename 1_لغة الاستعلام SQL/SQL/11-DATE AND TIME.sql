SELECT curdate();
SELECT curtime();
SELECT now(); 
SELECT year(now());
SELECT month(now());
SELECT day(now());
SELECT hour(now());
SELECT minute(now());
SELECT second(now());

SELECT
CASE 
WHEN dayofweek(return_date) = 1 THEN 'Sunday'
WHEN dayofweek(return_date) = 2 THEN 'Monday'
WHEN dayofweek(return_date) = 3 THEN 'Tuseday'
WHEN dayofweek(return_date) = 4 THEN 'Wednesday'
WHEN dayofweek(return_date) = 5 THEN 'Thursday'
WHEN dayofweek(return_date) = 6 THEN 'Friday'
WHEN dayofweek(return_date) = 7 THEN 'Saturday'
END AS return_day
FROM rental 

SELECT dayname(return_date)
FROM rental


SELECT *
FROM rental
WHERE return_date BETWEEN '2005-06-01 04:33:21' AND '2005-06-02 00:24:15'

SELECT *
FROM rental
WHERE return_date BETWEEN '2005-06-01' AND '2005-06-02'

SELECT * 
FROM rental
WHERE return_date < date_sub('2005-07-01', interval 1 WEEK)


SELECT * 
FROM rental
WHERE return_date < date_add('2005-07-01', interval 13 DAY)


SELECT 
date_format(return_date, '%Y-%m-%d %H-%i'),
COUNT(1)
FROM rental
GROUP BY 1


SELECT 
date_format(return_date, '%Y-%m-%d'),
COUNT(1)
FROM rental
GROUP BY 1


SELECT 
date(return_date),
COUNT(1)
FROM rental
GROUP BY 1


SELECT 
month(return_date),
COUNT(1)
FROM rental
GROUP BY 1

SELECT CONVERT_TZ('2018-01-01 12:00:00', '+00:00', '+10:00')
















