INSERT INTO language(name) VALUES ('ARABIC')

INSERT INTO actor(first_name, last_name) VALUES ('Mohamed', 'Taher')

INSERT INTO actor(first_name, last_name) VALUES ("Ahmed", "Hessien"), ("Mostfa", "Mokholes"), ("Mahmoud", "Ragb")

INSERT INTO actor (first_name, last_name) SELECT first_name, last_name from actor_info LIMIT 3


UPDATE actor SET first_name='John' WHERE actor_id = 3
UPDATE actor SET first_name='John', last_name='Mark' WHERE actor_id = 5
UPDATE film SET rental_rate = 9.99 WHERE length > 100

INSERT INTO actor(first_name, last_name) VALUES ("Ahmed", "Mawad")
UPDATE film SET replacement_cost = 30 WHERE rating = 'G' OR rating = "PG"

INSERT INTO film(title, language_id) VALUES ("Fast And Farius", 1)