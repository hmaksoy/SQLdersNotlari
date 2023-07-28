--1.Soru: Bir "Orders" tablosu düşünelim. Bu tabloda müşterilere ait sipariş bilgileri bulunmaktadır. 
--Tabloda aşağıdaki alanlar yer almaktadır:
--order_id (sipariş numarası)
--customer_id (müşteri numarası)
--order_date (sipariş tarihi)
--total_amount (toplam tutar)
--Bu tablodan, toplam tutarı en yüksek olan müşteriyi bulmak için bir SQL sorgusu yazın. 
--Subquery (alt sorgu) kullanarak toplam tutarı en yüksek olan müşteriyi belirleyin.


CREATE TABLE Orders2 (

              order_id INT,
	          customer_id INT,
	          order_date DATE,
	          total_amount DECIMAL
	     
);

SELECT * FROM Orders2;

INSERT INTO Orders2 (order_id, customer_id, order_date, total_amount)
VALUES
(1, 101, '2023-07-27', 1200),
(2, 102, '2023-07-28', 800),
(3, 103, '2023-07-29', 2500);



SELECT customer_id,total_amount FROM Orders2

WHERE total_amount = (SELECT MAX(total_amount) FROM Orders2);








