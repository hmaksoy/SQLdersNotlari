--3.Soru: Bir "Products" tablosu düşünelim. Bu tabloda ürünlere ait bilgiler bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--product_id (ürün numarası)
--product_name (ürün adı)
--category (ürün kategorisi)
--price (ürün fiyatı)
--stock_quantity (stok miktarı)
--Bu tablodan her kategorideki en düşük fiyatlı ürünleri bulmak için bir SQL sorgusu yazın. 
--Subquery (alt sorgu) kullanarak her kategorideki en düşük fiyatlı ürünleri belirleyin.


CREATE TABLE Products1 (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL,
    stock_quantity INT
);

INSERT INTO Products1 (product_id, product_name, category, price, stock_quantity)
VALUES
(1, 'Laptop', 'Electronics', 2500, 10),
(2, 'Smartphone', 'Electronics', 1200, 15),
(3, 'TV', 'Electronics', 1800, 8),
(4, 'Book', 'Stationery', 300, 50),
(5, 'Pen', 'Stationery', 50, 100),
(6, 'Notebook', 'Stationery', 100, 75),
(7, 'Shirt', 'Apparel', 400, 20),
(8, 'Jeans', 'Apparel', 600, 12),
(9, 'Shoes', 'Apparel', 800, 18);


SELECT * FROM Products1;

SELECT * FROM Products1 
AS p1 WHERE price = (SELECT MIN(price) FROM Products1 
AS p2 WHERE p1.category = p2.category
);


 