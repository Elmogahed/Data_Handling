SELECT * 
FROM payment
WHERE amount = 2.99

SELECT * 
FROM payment
WHERE amount > 2.99


SELECT * 
FROM payment
WHERE amount != 2.99

SELECT * 
FROM actor
WHERE first_name ='John'


SELECT title, rental_rate * rental_duration AS "Rental Cost" 
FROM film

SELECT title, rental_rate * (rental_duration - 1) AS "Rental Cost" 
FROM film

SElECT first_name , last_name
FROM actor
WHERE first_name LIKE 'ju%'

SElECT title, description
FROM film_text
WHERE description LIKE '%man%'
SElECT title, description
FROM film_text
WHERE description LIKE '% man %'

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'T_M'

SELECT * 
FROM film 
WHERE rental_duration in (3, 4, 7)

SELECT * 
FROM address
WHERE district IN ('QLD', 'Tahiti', 'Ontario')

SELECT * 
FROM film
WHERE length BETWEEN 60 AND 90

SELECT * 
FROM film
WHERE length >= 60 AND  length <= 90

SELECT * 
FROM address
WHERE address2 IS NULL

SELECT * 
FROM film_list
WHERE category='Documentary' AND length >= 60 AND length >= 90

SELECT * 
FROM film_list
WHERE category='Family' or (category='Documentary' AND rating = 'G') AND length >= 60 AND length >= 90

SELECT * 
FROM film 
WHERE length >= 60 AND length >= 90 or rental_rate = 2.99

SElECT * 
FROM film 
WHERE length NOT BETWEEN 60 AND 90

SELECT title, description, length 
FROM film
WHERE length BETWEEN 60 AND 90
ORDER BY length 
SELECT title, description, length 
FROM film
WHERE length BETWEEN 60 AND 90
ORDER BY length ASC

SELECT title, description, length 
FROM film
WHERE length BETWEEN 60 AND 90
ORDER BY length DESC




SELECT title, description, length 
FROM film
WHERE length BETWEEN 60 AND 90
ORDER BY title DESC


SELECT title, description, length 
FROM film
WHERE length BETWEEN 60 AND 90
ORDER BY length DESC, title



SELECT title, description, length 
FROM film
WHERE length BETWEEN 60 AND 90
ORDER BY 3 DESC, 1 LIMIT 30


SELECT * 
FROM payment
WHERE amount > 10

SELECT * 
FROM film
WHERE length > 120

SELECT title, rental_duration * rental_rate + 2 AS "Rental Cost"
FROM film

SELECT * 
FROM actor 
WHERE first_name LIKE "%a"

SELECT * 
FROM actor 
WHERE last_name LIKE "w%n"

SELECT * 
FROM film_list
WHERE category='Sports' AND length BETWEEN 90 AND 120



SELECT * 
FROM film_list
WHERE category='Sports' AND length BETWEEN 90 AND 120 
ORDER BY length DESC 


SELECT * 
FROM film_list
WHERE category='Sports' AND length BETWEEN 90 AND 120 
ORDER BY length DESC LIMIT 35