CREATE TABLE Books
(
  book_id              INT   NOT NULL ,
  book_titel           char(100)  NOT NULL,
  author_id            char(5)  NOT NULL ,
  genre_id             char(2)  NOT NULL ,
  rating               float8 NOT NULL,
  reviews_num          INT  NOT NULL,
  book_price           INT  NOT NULL
);

CREATE TABLE Authors
(
  author_id      char(5)  NOT NULL ,
  author_name    char(80)  NOT NULL 
);

CREATE TABLE Genres
(
  genre_id      char(2)  NOT NULL ,
  genre_name    char(60)      NOT NULL  
);

CREATE TABLE Ratings
(
  rating          float8 NOT NULL,
  rating_weight   char(10)  NOT NULL
);

ALTER TABLE Books ADD PRIMARY KEY (book_id);
ALTER TABLE Authors ADD PRIMARY KEY (author_id);
ALTER TABLE Genres ADD PRIMARY KEY (genre_id);
ALTER TABLE Ratings ADD PRIMARY KEY (rating);

ALTER TABLE Books ADD CONSTRAINT FK_Books_Authors FOREIGN KEY (author_id) REFERENCES Authors (author_id);
ALTER TABLE Books ADD CONSTRAINT FK_Books_Genres FOREIGN KEY (genre_id) REFERENCES Genres (genre_id);
ALTER TABLE Books ADD CONSTRAINT FK_Books_Ratings FOREIGN KEY (rating) REFERENCES Ratings (rating);