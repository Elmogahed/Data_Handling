SELECT title,  
CASE 
WHEN length > 180 THEN "Logn Movie"
WHEN length < 180 AND length > 120 THEN "Medieum Movie"
WHEN length < 120 THEN 'Short Movie'
ELSE 'Unknown'
END AS "Movie Length"
FROM film

SELECT COUNT(*) 
FROM rental 
WHERE return_date IS NULL 



SELECT COUNT(*) 
FROM rental 
WHERE return_date IS NOT NULL 

SELECT 
CASE 
WHEN return_date IS NULL THEN "Not Returned"
ELSE 'Returned'
END AS return_state, 
COUNT(1) AS count
FROM rental 
GROUP BY return_state

SELECT 
CASE 
WHEN return_date IS NULL THEN "Not Returned"
ELSE 'Returned'
END AS return_state, 
COUNT(1) AS count
FROM rental 
GROUP BY 1;

SELECT
    film.title, 
    CASE 
        WHEN COUNT(inventory.inventory_id) > 0 THEN 'Avilable'
        ELSE 'Not Avalilable'
        END AS 'availability'
FROM
    film
LEFT JOIN
    inventory ON film.film_id = inventory.film_id
LEFT JOIN
    rental ON inventory.inventory_id = rental.inventory_id AND rental.return_date IS NULL
GROUP BY
    film.film_id;
 




SELECT film.title,
CASE
WHEN rental.return_date IS NOT NULL THEN 'Available'
ELSE 'Not Available'
END AS 'Availability'
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON rental.inventory_id = inventory.inventory_id
GROUP BY film.film_id
    
SELECT 
    film.title, 
    CASE
        WHEN rental.return_date IS NOT NULL THEN 'Available'
        ELSE 'Not Available'
    END AS Availability,
    inventory.store_id AS store 
FROM 
    film
JOIN 
    inventory ON film.film_id = inventory.film_id
JOIN 
    rental ON rental.inventory_id = inventory.inventory_id;
    
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


