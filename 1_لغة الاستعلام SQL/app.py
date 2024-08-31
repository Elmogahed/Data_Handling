import mysql.connector

db = mysql.connector.connect(host='localhost', user='root', password='181298', database='sakila')

cursur =db.cursor()

# cursur.execute('SHOW DATABASES')

# for x in cursur:  # type: ignore
#     print(x)

# cursur.execute('SELECT first_name, last_name FROM actor')

# results = cursur.fetchall()

# for result in results: 
#     print(result)

# results_1 = cursur.fetchone()
# print(results_1)

# cursur.execute('SELECT first_name, last_name FROM actor WHERE first_name = "JOHN"')

# results_2 = cursur.fetchall()


# for result in results_2: 
#     print(result)

# name = 'JOHN',
# cursur.execute('SELECT first_name, last_name FROM actor WHERE first_name = %s', name)

# results_2 = cursur.fetchall()


# for result in results_2: 
#     print(result)

# query = 'INSERT INTO actor (first_name, last_name) VALUES (%s, %s)'
# vaules = ('Ahmed', 'Jamal')
# cursur.execute(query, vaules)
# results_3 = cursur.fetchall()

# db.commit()

# for result in results_3: 
#     print(result)

# query = 'INSERT INTO actor (first_name, last_name) VALUES (%s, %s)'
# vaules = [
#     ('Ahmed', 'Jamal'),
#     ('Ahmed', 'Adanan'),
#     ('Ahmed', 'Mawad'),
#     ('Ahmed', 'Habib'),
#     ]
# cursur.executemany(query, vaules)
# results_3 = cursur.fetchall()

# db.commit()

# print(cursur.rowcount, ' was inserted')
# query = 'UPDATE actor SET first_name =%s WHERE first_name = %s '
# vaules = ('Ramzy', 'Ahmed')

# cursur.execute(query, vaules)
# results_3 = cursur.fetchall()

# db.commit()

# print(cursur.rowcount, ' was Updated')
query = 'DELETE from actor WHERE first_name = %s'
vaules = 'Ramzy',

cursur.execute(query, vaules)
results_3 = cursur.fetchall()

db.commit()

print(cursur.rowcount, ' was deleted')