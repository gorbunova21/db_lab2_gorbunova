import psycopg2

username = 'GorbunovaSofia'
password = '2003'
database = 'lab_2'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(authors.author_name), COUNT(books.author_id) from books JOIN authors
ON authors.author_id = books.author_id
GROUP BY author_name;
'''

query_2 = '''
SELECT ratings.rating, COUNT(books.rating) AS num_of_books from books JOIN ratings
ON ratings.rating = books.rating
GROUP BY ratings.rating;
'''

query_3 = '''
SELECT TRIM(book_titel) AS book_titel, reviews_num FROM books
WHERE reviews_num > 15000
ORDER BY reviews_num;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
print(type(conn))

with conn:

    print ("\nDatabase opened successfully\n")
    cur = conn.cursor()

    print('1. Number of books by each author\n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2. Rating and number of all books that have received it\n')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3. Book titles with more than 15,000 reviews\n')
    cur.execute(query_3)
    for row in cur:
        print(row)
