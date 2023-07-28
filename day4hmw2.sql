--2.Soru: Bir "Employees" tablosu düşünelim. Bu tabloda şirkette çalışanlara ait bilgiler bulunmaktadır. 
--Tabloda aşağıdaki alanlar yer almaktadır:
--employee_id (çalışan numarası)
--employee_name (çalışan adı)
--department_id (departman numarası)
--salary (çalışanın maaşı)
--Bu tablodan her departmandaki en yüksek maaşlı çalışanları bulmak için bir SQL sorgusu yazın.
--Subquery (alt sorgu) kullanarak her departmandaki en yüksek maaşlı çalışanları belirleyin.


CREATE TABLE Employees2 (
    employee_id INT,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL
);

INSERT INTO Employees2 (employee_id, employee_name, department_id, salary)
VALUES
(1, 'John Doe', 1, 5000.00),
(2, 'Jane Smith', 1, 5500.00),
(3, 'Mike Johnson', 2, 4800.00),
(4, 'Emily Brown', 2, 5200.00),
(5, 'David Lee', 3, 5100.00),
(6, 'Emma Wilson', 3, 6000.00);

SELECT * FROM Employees2;

SELECT * FROM Employees2 AS e1
              WHERE salary = (SELECT MAX(salary)FROM Employees2 AS e2
              WHERE e1.department_id = e2.department_id
);

