
SELECT category.name, COUNT(film.title) AS COUNT
FROM film 
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON category.category_id = film_category.category_id
GROUP BY  category.name
HAVING count > 60
ORDER BY count DESC 

SELECT country.country,city.city ,COUNT(customer.customer_id) AS "Number of customers"
FROM customer 
JOIN address ON customer.address_id = address.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
GROUP BY country.country, city.city
HAVING COUNT(customer.customer_id) > 1

SELECT * 
FROM film  
JOIN inventory ON film.film_id = inventory.film_id
JOIN store ON inventory.store_id = store.store_id
JOIN address ON address.address_id = store.address_id

SELECT GROUP_CONCAT(title SEPARATOR ', ') AS film_titles, rental_rate AS rental_price, COUNT(*) AS film_count
FROM film
GROUP BY rental_rate
ORDER BY rental_rate DESC;

















