--2. Soru: Bir "Employees" tablosu düşünelim. Bu tabloda şirkette çalışanlara ait bilgiler bulunmaktadır. 
--Tabloda aşağıdaki alanlar yer almaktadır:
--employee_id (çalışan numarası)
--employee_name (çalışan adı)
--department (çalışanın bağlı olduğu departman)
--salary (çalışanın maaşı)
--hire_date (çalışanın işe başlama tarihi)
--Bu tablodan "department" alanı "Sales" olan ve "salary" alanı 5000 TL'den fazla olan çalışanların isimlerini ve maaşlarını listeleyen SQL sorgusunu yazınız.


CREATE TABLE Employees1(

        employee_id INT,
	    employee_name VARCHAR(50),
	    department VARCHAR (50),
	    salary DECIMAL,
	    hire_date DATE
);

SELECT * FROM Employees1;



INSERT INTO Employees1 (employee_id, employee_name, department, salary, hire_date)
VALUES
(1, 'John Doe', 'Sales', 5500, '2022-03-15'),
(2, 'Jane Smith', 'HR', 4800, '2021-09-20'),
(3, 'Mike Johnson', 'Sales', 6000, '2023-01-10');



SELECT employee_name,salary FROM Employees1 WHERE department='Sales' AND salary>5000 ;