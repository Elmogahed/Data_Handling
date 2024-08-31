SELECT film.film_id ,film.title, language.name AS "Language"
FROM film
JOIN language ON film.language_id = language.language_id

SELECT * 
FROM language 
JOIN film ON film.language_id = language.language_id

SELECT film.film_id, film.title, category.name
FROM film 
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
ORDER BY film_id

SELECT customer.first_name, customer.last_name, customer.email, address.address, city.city
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON city.city_id = address.city_id























