--4.Soru: Bir "Books" tablosu düşünelim. Bu tabloda kitaplara ait bilgiler bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--book_id (kitap numarası)
--book_name (kitap adı)
--author (yazar adı)
--genre (kitap türü)
--publication_year (yayın yılı)
--Bu tablodan "genre" alanı "Romance" olan ve "publication_year" alanı 2000 yılından sonra olan kitaplari yaziniz.


CREATE TABLE Books1 (

       book_id INT,
	   book_name VARCHAR(50),
	   author VARCHAR(50),
	   genre VARCHAR (50),
	   publication_year INT  


);

SELECT * FROM Books1;

INSERT INTO Books1 (book_id, book_name, author, genre, publication_year)
VALUES
(1, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813),
(2, 'The Notebook', 'Nicholas Sparks', 'Romance', 1996),
(3, 'Me Before You', 'Jojo Moyes', 'Romance', 2012);

SELECT * FROM Books1 WHERE genre = 'Romance' AND publication_year>2000;

