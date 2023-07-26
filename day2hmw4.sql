--Bir "Departments" tablosu ve bir de "Employees" tablosu düşünelim. "Departments" tablosunda şirketin departmanlarına ait bilgiler bulunurken, 
--"Employees" tablosunda çalışanlara ait bilgiler tutuluyor.
--Employees Tablosu: employee_id (çalışan numarası), employee_name (çalışan adı), department_id (departman numarası)
--Bu iki tablo arasında bir ilişki kurmak için hangi anahtar (key) türlerini kullanırsınız?

--"Departments" tablosunda, "department_id" sütunu birincil anahtar (Primary Key) olarak tanımlanır ve departman numarasını temsil eder.
--"Employees" tablosunda, "employee_id" sütunu birincil anahtar (Primary Key) olarak tanımlanır ve çalışan numarasını temsil eder.
--"Employees" tablosundaki "department_id" sütunu, "Departments" tablosundaki "department_id" sütununa yabancı anahtar (Foreign Key) olarak tanımlanır. 
--Böylece "Employees" tablosundaki her çalışanın hangi departmana ait olduğu "Departments" tablosundaki "department_id" ile ilişkilendirilir.



CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(100)
);




CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);







-- Departments Tablosu Oluşturma ve Verileri Ekleme
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO Departments (department_id, department_name, location)
VALUES
    (1, 'Muhasebe', 'Ankara'),
    (2, 'İnsan Kaynakları', 'İstanbul'),
    (3, 'Pazarlama', 'İzmir'),
    (4, 'Ar-Ge', 'Bursa');

-- Employees Tablosu Oluşturma ve Verileri Ekleme
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Employees (employee_id, employee_name, department_id)
VALUES
    (101, 'Ahmet Yılmaz', 1),
    (102, 'Ayşe Kaya', 2),
    (103, 'Mehmet Aksoy', 3),
    (104, 'Fatma Can', 4),
    (105, 'Ali Yıldırım', 1);




+---------------+-------------------+----------+
| department_id | department_name   | location |
+---------------+-------------------+----------+
| 1             | Muhasebe          | Ankara   |
| 2             | İnsan Kaynakları  | İstanbul |
| 3             | Pazarlama         | İzmir    |
| 4             | Ar-Ge             | Bursa    |
+---------------+-------------------+----------+


+--------------+------------------+---------------+
| employee_id  | employee_name    | department_id |
+--------------+------------------+---------------+
| 101          | Ahmet Yılmaz     | 1             |
| 102          | Ayşe Kaya        | 2             |
| 103          | Mehmet Aksoy     | 3             |
| 104          | Fatma Can        | 4             |
| 105          | Ali Yıldırım     | 1             |
+--------------+------------------+---------------+


