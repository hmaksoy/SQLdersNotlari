--Bir "Books" tablosu ve bir de "Authors" tablosu düşünelim. "Books" tablosunda kitaplara ait bilgiler bulunurken, "Authors" tablosunda yazarlara ait bilgiler tutuluyor.
--Books Tablosu: book_id (kitap numarası), book_name (kitap adı), author_id (yazar numarası)
--Authors Tablosu: author_id (yazar numarası), author_name (yazar adı), nationality (uyruk)
--Bu iki tablo arasında bir ilişki kurmak için hangi anahtar (key) türlerini kullanırsınız?

-- İki tablo arasında bir ilişki kurmak için "Primary Key" (Birincil Anahtar) ve "Foreign Key" (Yabancı Anahtar) kullanılacaktır




CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    nationality VARCHAR(100)
);


INSERT INTO Authors (author_id, author_name, nationality)
VALUES
    (1, 'Jane Austen', 'English'),
    (2, 'Leo Tolstoy', 'Russian'),
    (3, 'Mark Twain', 'American'),
    (4, 'Gabriel Garcia Marquez', 'Colombian');
	
	
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(200),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


INSERT INTO Books (book_id, book_name, author_id)
VALUES
    (101, 'Pride and Prejudice', 1),
    (102, 'War and Peace', 2),
    (103, 'The Adventures of Huckleberry Finn', 3),
    (104, 'One Hundred Years of Solitude', 4),
    (105, 'Emma', 1);


+---------+----------------------------+-----------+
| book_id |        book_name           | author_id |
+---------+----------------------------+-----------+
|   101   | Pride and Prejudice        |    1      |
|   102   | War and Peace              |    2      |
|   103   | The Adventures of Huckleber|    3      |
|   104   | One Hundred Years of Solitu|    4      |
|   105   | Emma                       |    1      |
+---------+----------------------------+-----------+



+-----------+----------------------+--------------+
| author_id |     author_name      |  nationality |
+-----------+----------------------+--------------+
|    1      | Jane Austen          |   English    |
|    2      | Leo Tolstoy          |   Russian    |
|    3      | Mark Twain           |   American   |
|    4      | Gabriel Garcia Marque|  Colombian   |
+-----------+----------------------+--------------+


