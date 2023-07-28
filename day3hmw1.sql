--1. Soru: Bir "Products" tablosu düşünelim. Bu tabloda ürünlere ait bilgiler bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--product_id (ürün numarası)
--product_name (ürün adı)
--category (ürün kategorisi)
--price (ürün fiyatı)
--stock_quantity (stok miktarı)
--Bu tablodan "category" alanı "Electronics" olan ve "price" alanı 1000 TL üzerinde olan ürünleri listeleyen SQL sorgusunu yazınız.

CREATE TABLE Products (

         product_id INT,
	     product_name VARCHAR(50),
	     category VARCHAR(50),
	     price DECIMAL,
	     stock_quantity INT
);

SELECT * FROM Products;

INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 1500, 10);
INSERT INTO Products VALUES (2, 'TV', 'Electronics', 1200, 15);
INSERT INTO Products VALUES (3, 'Microwawe','Appliances', 1000, 20);

SELECT * FROM Products WHERE category='Electronics' AND price>1000;