import psycopg2
import matplotlib.pyplot as plt

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


with conn:
    cur = conn.cursor()

# query_1
    cur.execute(query_1)
    authors = []
    n_book = []

    for row in cur:
        authors.append(row[0])
        n_book.append(row[1])

    x_range = range(len(authors))

    figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

    bar_ax.bar(x_range, n_book, label='Total')
    bar_ax.set_title('Кількість книжок кожного автора')
    bar_ax.set_xlabel('Автори')
    bar_ax.set_ylabel('Кількість книжок')
    bar_ax.set_xticks(x_range)
    bar_ax.set_xticklabels(authors, rotation=45)

# query_2
    cur.execute(query_2)
    ratings = []
    films = []

    for row in cur:
        ratings.append(row[0])
        films.append(row[1])

    pie_ax.pie(films, labels=ratings, autopct='%1.1f%%')
    pie_ax.set_title('Частка книжок кожної рейтингової оцінки')

# query_3
    cur.execute(query_3)
    titel = []
    num_rew = []

    for row in cur:
        titel.append(row[0])
        num_rew.append(row[1])

    graph_ax.plot(titel, num_rew, marker='o')
    graph_ax.set_xlabel('Назви книг')
    graph_ax.set_ylabel('Кількість відгуків')
    graph_ax.set_title('Назви книг з кількістю відгуків більше 15000')
    graph_ax.set_xticklabels(titel, rotation=40)

    for qnt, price in zip(titel, num_rew):
        graph_ax.annotate(price, xy=(qnt, price), xytext=(7, 2), textcoords='offset points')


mng = plt.get_current_fig_manager()
mng.resize(1400, 750)

plt.subplots_adjust(left=0.1, bottom=0.19, right=0.94, top=0.9, wspace=0.4, hspace=0.4)

plt.show()

