CREATE TABLE teachers( kimlik_no CHAR(9), isim VARCHAR(50), brans VARCHAR(50), cinsiyet VARCHAR(9));

INSERT INTO teachers VALUES ('234431223','Nana TechWorld','DevOps','kadin');
INSERT INTO teachers VALUES ('234431224', 'Mehmet Ince', 'Security', 'erkek');

INSERT INTO teachers (kimlik_no,isim) VALUES ('567597624','Stephane Maarek');