SELECT category.name category, film.rating, COUNT(film.film_id) AS films
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
GROUP BY category.name, rating
ORDER BY films DESC;

SELECT category, 
CASE WHEN rating = 'G' THEN films ELSE 0 END AS 'G',
CASE WHEN rating = 'PG' THEN films ELSE 0 END AS 'paymentG',
CASE WHEN rating = 'PG-13' THEN films ELSE 0 END AS 'PG-13',
CASE WHEN rating = 'R' THEN films ELSE 0 END AS 'R'
FROM (SELECT category.name category , film.rating, COUNT(film.film_id) AS films
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
GROUP BY category , rating
ORDER BY films DESC) sub;


SELECT category,
SUM(films) AS total_films,
SUM(CASE WHEN rating = 'G' THEN films ELSE 0 END) AS 'G',
SUM(CASE WHEN rating = 'PG' THEN films ELSE 0 END) AS 'paymentG',
SUM(CASE WHEN rating = 'PG-13' THEN films ELSE 0 END) AS 'PG-13',
SUM(CASE WHEN rating = 'R' THEN films ELSE 0 END) AS 'R'
FROM (SELECT category.name category , film.rating, COUNT(film.film_id) AS films
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
GROUP BY category , rating
ORDER BY films DESC) sub
GROUP BY category
ORDER BY total_films DESC;

WITH base_query AS ( SELECT CONCAT(city.city, ',', country.country) store, date_format(payment_date, '%b-%y') AS payment_date, SUM(amount) AS payments
FROM payment
JOIN rental ON (payment.rental_id = rental.rental_id)
JOIN inventory ON (rental.inventory_id = inventory.inventory_id)
JOIN store ON (inventory.store_id = store.store_id)
JOIN address ON (store.address_id = address.address_id)
JOIN city ON (address.city_id = city.city_id)
JOIN country ON (city.country_id = country.country_id)
GROUP BY store, payment_date)

SELECT store,
SUM(payments) AS total_payments, 
SUM(CASE WHEN payment_date= 'May-2005' THEN payments ELSE 0 END) AS 'May-2005',
SUM(CASE WHEN payment_date= 'Jun-2005' THEN payments ELSE 0 END) AS 'Jun-2005',
SUM(CASE WHEN payment_date= 'Jul-2005' THEN payments ELSE 0 END) AS 'Jul-2005',
SUM(CASE WHEN payment_date= 'Aug-2005' THEN payments ELSE 0 END) AS 'Aug-2005',
SUM(CASE WHEN payment_date= 'Feb-2005' THEN payments ELSE 0 END) AS 'Feb-2005'
FROM base_query
GROUP BY store 
ORDER BY total_payments DESC;



WITH base_query AS (
    SELECT 
           category.name, 
           date_format(payment_date, '%b-%y') AS payment_date, 
           SUM(amount) AS payments 
    FROM
        payment
    JOIN
        rental ON (payment.rental_id = rental.rental_id)
    JOIN
        inventory ON (rental.inventory_id = inventory.inventory_id)
    JOIN
        film ON film.film_id = inventory.film_id
    JOIN
        film_category ON film_category.film_id = film.film_id
    JOIN
        category ON category.category_id = film_category.category_id
    GROUP BY category.name, payment_date
)

SELECT base_query.name, SUM(base_query.payments)  AS total_payments, 
SUM(CASE WHEN base_query.payment_date = 'May-05' THEN base_query.payments ELSE 0 END) AS 'May-2005',
SUM(CASE WHEN base_query.payment_date = 'Jun-05' THEN base_query.payments ELSE 0 END) AS 'Jun-2005',
SUM(CASE WHEN base_query.payment_date = 'Jul-05' THEN base_query.payments ELSE 0 END) AS 'Jul-2005',
SUM(CASE WHEN base_query.payment_date = 'Aug-05' THEN base_query.payments ELSE 0 END) AS 'Aug-2005',
SUM(CASE WHEN base_query.payment_date = 'Feb-05' THEN base_query.payments ELSE 0 END) AS 'Feb-2005'
FROM base_query
GROUP BY base_query.name;





WITH base_query AS (
    SELECT 
        category.name, 
        date_format(payment_date, '%b-%y') AS payment_date, 
        SUM(amount) AS payments 
    FROM 
        payment
    JOIN 
        rental ON (payment.rental_id = rental.rental_id)
    JOIN 
        inventory ON (rental.inventory_id = inventory.inventory_id)
    JOIN 
        film ON film.film_id = inventory.film_id
    JOIN 
        film_category ON film_category.film_id = film.film_id
    JOIN 
        category ON category.category_id = film_category.category_id
    GROUP BY 
        category.name, payment_date
)

SELECT 
    base_query.name, 
    SUM(base_query.payments) AS total_payments, 
    SUM(CASE WHEN base_query.payment_date = 'May-05' THEN base_query.payments ELSE 0 END) AS 'May-2005',
    SUM(CASE WHEN base_query.payment_date = 'Jun-05' THEN base_query.payments ELSE 0 END) AS 'Jun-2005',
    SUM(CASE WHEN base_query.payment_date = 'Jul-05' THEN base_query.payments ELSE 0 END) AS 'Jul-2005',
    SUM(CASE WHEN base_query.payment_date = 'Aug-05' THEN base_query.payments ELSE 0 END) AS 'Aug-2005',
    SUM(CASE WHEN base_query.payment_date = 'Feb-05' THEN base_query.payments ELSE 0 END) AS 'Feb-2005'
FROM 
    base_query
GROUP BY 
    base_query.name;























