--3. Soru: Bir "Orders" tablosu düşünelim. Bu tabloda müşterilere ait sipariş bilgileri bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--order_id (sipariş numarası)
--customer_name (müşteri adı)
--order_date (sipariş tarihi)
--total_amount (toplam tutar)
--status (sipariş durumu)
--Bu tablodan "total_amount" alanı 1000 TL üzerinde olan ve "status" alanı "Shipped" olan siparişleri listeleyen SQL sorgusunu yazınız.

CREATE TABLE Orders1 (

              order_id INT,
	          customer_name VARCHAR(50),
	          order_date DATE,
	          total_amount DECIMAL,
	          status VARCHAR(50)
);

SELECT * FROM Orders1;

INSERT INTO Orders1 (order_id, customer_name, order_date, total_amount, status)
VALUES
(1, 'John Doe', '2022-03-15', 1200, 'Shipped'),
(2, 'Jane Smith', '2022-04-20', 900, 'Processing'),
(3, 'Mike Johnson', '2022-05-10', 2500, 'Shipped');


SELECT * FROM Orders1 WHERE total_amount>1000 AND status='Shipped';