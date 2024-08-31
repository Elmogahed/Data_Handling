SELECT language.language_id, language.name, film.title
FROM language
LEFT JOIN film ON language.language_id = film.language_id

SELECT customer.first_name, customer.last_name, address.address, address.postal_code
FROM customer
RIGHT JOIN address ON address.address_id = customer.address_id

SELECT customer.first_name, customer.last_name, customer.email, address.address, city.city, country.country
FROM customer
JOIN address ON address.address_id = customer.address_id 
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
WHERE country.country = 'Canada'

SELECT film.film_id,  film.title , category.name
FROM film 
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Family'
ORDER BY film_id

SELECT film.title, COUNT(inventory.film_id) AS "Count"
FROM film 
JOIN inventory ON film.film_id = inventory.film_id
GROUP BY film.title
















