INSERT INTO Authors (author_id, author_name)
	VALUES('GO','George Orwell');
INSERT INTO Authors (author_id, author_name)
	VALUES('GM','George R. R. Martin');	
INSERT INTO Authors (author_id, author_name)
	VALUES('VR','Veronica Roth');
INSERT INTO Authors (author_id, author_name)
	VALUES('JR','J.K. Rowling');
INSERT INTO Authors (author_id, author_name)
	VALUES('RB','Ray Bradbury');
INSERT INTO Authors (author_id, author_name)
	VALUES('RP','Roger Priddy');
INSERT INTO Authors (author_id, author_name)
	VALUES('DC','Dale Carnegie');
INSERT INTO Authors (author_id, author_name)
	VALUES('BS','Brandon Stanton');
INSERT INTO Authors (author_id, author_name)
	VALUES('SC','Stephen R. Covey');


INSERT INTO genres (genre_id, genre_name)
	VALUES('F','Fiction');
INSERT INTO genres (genre_id, genre_name)
	VALUES('NF','Non Fiction');


INSERT INTO ratings (rating, rating_weight)
	VALUES('4.9','very high');
INSERT INTO ratings (rating, rating_weight)
	VALUES('4.7','high');
INSERT INTO ratings (rating, rating_weight)
	VALUES('4.6','high');
INSERT INTO ratings (rating, rating_weight)
	VALUES('4.8','very high');
INSERT INTO ratings (rating, rating_weight)
	VALUES('4.4','high');
		
	
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('1','Harry Potter and the Sorcerers Stone','JR','F','4.9','10052','22');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('2','A Game of Thrones','GM','F','4.7','19735','30');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('3','1984','GO','F','4.7','21424','6');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('4','First 100 Words','RP','NF','4.7','17323','4');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('5','Divergent','VR','F','4.6','27098','15');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('6','How to Win Friends & Influence People','DC','NF','4.7','25001','11');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('7','Humans of New York','BS','NF','4.8','3490','15');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('8','Fahrenheit','RB','F','4.6','10721','8');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('9','A Dance with Dragons','GM','F','4.4','12643','11');
INSERT INTO books (book_id, book_titel, author_id, genre_id, rating, reviews_num, book_price)
	VALUES('10','The 7 Habits of Highly Effective People','SC','NF','4.7','4725','16');
	

