--Bir "Students" tablosu ve bir de "Courses" tablosu düşünelim. "Students" tablosunda öğrencilere ait bilgiler bulunurken, "Courses" tablosunda öğrencilerin aldığı derslere ait bilgiler tutuluyor. Tablolarda aşağıdaki alanlar yer alıyor:
--Students Tablosu: student_id (öğrenci numarası), student_name (öğrenci adı), department (bölüm)
--Courses Tablosu: course_id (ders numarası), course_name (ders adı), credit (kredi), instructor (öğretmen adı)
--Bu iki tablo arasında bir ilişki kurmak için hangi anahtar (key) türlerini kullanırsınız?


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credit INT,
    instructor VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);






CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO Students (student_id, student_name, department)
VALUES
    (1, 'Ahmet Yılmaz', 'Bilgisayar Mühendisliği'),
    (2, 'Ayşe Kaya', 'Makine Mühendisliği'),
    (3, 'Mehmet Aksoy', 'Elektrik Elektronik Mühendisliği'),
    (4, 'Fatma Can', 'Kimya Mühendisliği');
	
SELECT * FROM Students	
	
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credit INT,
    instructor VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);



INSERT INTO Courses (course_id, course_name, credit, instructor, student_id)
VALUES
    (101, 'Veri Yapıları', 3, 'Prof. Ahmet Demir', 1),
    (102, 'Termodinamik', 4, 'Doç. Ayşe Kılıç', 2),
    (103, 'Sinyaller ve Sistemler', 5, 'Prof. Mehmet Yılmaz', 3),
    (104, 'Organik Kimya', 3, 'Dr. Fatma Tekin', 4),
    (105, 'Algoritma Analizi', 4, 'Prof. Ali Yıldırım', 1);
	
SELECT * FROM Courses 	
	
Students Tablosu:

+------------+------------------+----------------------------+
| student_id |   student_name   |         department         |
+------------+------------------+----------------------------+
|     1      |   Ahmet Yılmaz   |   Bilgisayar Mühendisliği  |
|     2      |     Ayşe Kaya    |     Makine Mühendisliği    |
|     3      |   Mehmet Aksoy   | Elektrik Elektronik Müh.   |
|     4      |     Fatma Can    |       Kimya Mühendisliği   |
+------------+------------------+----------------------------+

Courses Tablosu:

+------------+------------------------+--------+--------------------+------------+
| course_id  |       course_name      | credit |   instructor       | student_id |
+------------+------------------------+--------+--------------------+------------+
|    101     |    Veri Yapıları       |   3    | Prof. Ahmet Demir  |     1      |
|    102     |    Termodinamik        |   4    | Doç. Ayşe Kılıç    |     2      |
|    103     | Sinyaller ve Sistemler |   5    | Prof. Mehmet Yılmaz|     3      |
|    104     |    Organik Kimya       |   3    | Dr. Fatma Tekin    |     4      |
|    105     |   Algoritma Analizi    |   4    | Prof. Ali Yıldırım |     1      |
+------------+------------------------+--------+--------------------+------------+
