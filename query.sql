-- Кількість книг кожного автора
SELECT TRIM(authors.author_name) AS author_name, COUNT(books.author_id) from books JOIN authors
ON authors.author_id = books.author_id
GROUP BY author_name

-- Рейтингова оцінка та кількість всіх книг, що її отримали
SELECT ratings.rating, COUNT(books.rating) AS num_of_books from books JOIN ratings
ON ratings.rating = books.rating
GROUP BY ratings.rating

-- Назви книг, в яких кількість відгуків більше 15 000
SELECT TRIM(book_titel) AS book_titel, reviews_num FROM books
WHERE reviews_num > 15000
ORDER BY reviews_num
