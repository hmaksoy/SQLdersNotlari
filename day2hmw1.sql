--1. Soru:
--Bir üniversitenin öğrenci bilgilerini tutmak için "students" adında bir tablo oluşturmanız gerekiyor. Bu tabloda 
--"student_id" (öğrenci numarası), 
--"student_name" (öğrenci adı), "age" (yaş) ve "department" (bölüm) sütunları bulunmalıdır. Sütunlarda aşağıdaki kısıtlamaları uygulayın:
--"student_id" sütunu için benzersizlik kısıtlaması (unique constraint) uygulayın.
--"student_name" sütunu için boş değer kabul etmeyen kısıtlama (not null constraint) uygulayın.
--"age" sütunu için değer aralığı kısıtlaması (check constraint) uygulayın: Yaş değeri 18' den büyük olmalıdır.


CREATE TABLE stdents(
	
       student_id INT UNIQUE,
	   student_name VARCHAR(50) NOT NULL,
	   age INT CHECK (age>18)
);

SELECT * FROM stdents;