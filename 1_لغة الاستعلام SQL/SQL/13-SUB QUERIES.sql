SELECT AVG(replacement_cost)
FROM film; 

SELECT title, replacement_cost
FROM film 
WHERE replacement_cost > 19.9;

SELECT title, replacement_cost
FROM film 
WHERE replacement_cost > (SELECT AVG(replacement_cost) FROM film);

SELECT first_name, last_name, (SELECT COUNT(*) FROM payment WHERE payment.customer_id = customer.customer_id) AS number_of_payments
FROM customer;

SELECT customer.first_name, customer.last_name, payment.amount
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE amount = (SELECT MAX(amount) FROM payment);

SELECT MAX(replacement_cost), MAX(rental_rate)
FROM film

SELECT film.title, category.name, film.replacement_cost, film.rental_rate
FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE (film.replacement_cost, film.rental_rate) IN (SELECT MAX(replacement_cost), MAX(rental_rate)FROM film)
















