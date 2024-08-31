SELECT * 
FROM film 
WHERE description like '%man%'

SELECT * 
FROM film 
WHERE description REGEXP '\\bman\\b'

SELECT * 
FROM address 
WHERE postal_code REGEXP '^.{3}$'

SELECT *
FROM film_list 
WHERE title LIKE '%Tonw%'OR title LIKE '%Bird%'

SELECT * 
FROM film_list
WHERE title REGEXP '\\bTown\\b|\\bBird\\b'

SELECT * 
FROM film_list
WHERE title NOT REGEXP '\\bTown\\b|\\bBird\\b'












