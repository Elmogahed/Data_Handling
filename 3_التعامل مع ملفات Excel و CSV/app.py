import csv

with open('actor.csv', newline='') as csvfile: 
    reader = csv.reader(csvfile)
    for row in reader: 
        print(', '.join(row))


with open('names.csv', 'w', newline='') as csvfile: 
    csvwriter = csv.writer(csvfile, delimiter=',',quoting=csv.QUOTE_NONNUMERIC, quotechar="'")
    csvwriter.writerow(['id', 'first_name', 'last_name'])
    csvwriter.writerow([1, 'Mohamed', 'Taher'])

names = [ 
    (1, 'Mohamed', 'Taher'),
    (2, 'Mohamed', 'Mohsen'),
    (3, 'Mohamed', 'Sleem'),
    (4, 'Mohamed', 'Nasser')
]
with open('names.csv', 'w', newline='') as csvfile: 
    csvwriter = csv.writer(csvfile, delimiter=',',quoting=csv.QUOTE_NONNUMERIC, quotechar="'")
    csvwriter.writerows(names)

with open('actor.csv', newline='') as csvfile: 
    reader = csv.DictReader(csvfile)

    for row in reader: 
        print(row)

with open('names2.csv', 'w', newline='') as csvfile: 
    fieldnames = ['id', 'first_name', 'last_name']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    
    writer.writeheader()
    writer.writerow({'id': 1, 'first_name': 'Mohamed', 'last_name': 'Taher'})

