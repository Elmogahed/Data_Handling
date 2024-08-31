SELECT title,  LEFT(description, 50)
FROM film;
SELECT RIGHT(payment_date, 8)
FROM payment;

SELECT title,  SUBSTR(description, 20,50)
FROM film;

SELECT title,  LENGTH(description)
FROM film;

SELECT title,  TRIM(LEADING 'A ' FROM description)
FROM film;

SELECT title, description, POSITION('Drama' IN description) AS drama_position
FROM film;

SELECT customer.customer_id, CONCAT(customer.first_name, ' ', customer.last_name) full_name, address
FROM customer
JOIN address ON customer.address_id = address.address_id;










SELECT customer.customer_id, LOWER(CONCAT(customer.first_name, ' ', customer.last_name)) full_name, address
FROM customer
JOIN address ON customer.address_id = address.address_id;

SELECT customer.customer_id, LOWER(CONCAT(customer.first_name, ' ', customer.last_name)) full_name, UPPER(address)
FROM customer
JOIN address ON customer.address_id = address.address_id;

SELECT 
CONCAT (
    SUBSTR(first_name, 1, 1)
    LOWER(SUBSTR(first_name, 2)),
    ' ', 
    SUBSTR(last_name, 1, 1),
    LOWER(SUBSTR(last_name, 2))
) AS full_name
FROM customer;



SELECT 
    CONCAT(
        UPPER(SUBSTR(first_name, 1, 1)),
        LOWER(SUBSTR(first_name, 2)),
        ' ', 
        UPPER(SUBSTR(last_name, 1, 1)),
        LOWER(SUBSTR(last_name, 2))
    ) AS full_name
FROM customer;




SELECT rental_date, customer_id, COALESCE(return_date, 'No retur date')
FROM rental










