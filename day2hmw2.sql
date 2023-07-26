--Bir müşterilere ait sipariş bilgilerini tutmak için "orders" adında bir tablo oluşturmanız gerekiyor. Bu tabloda "order_id" (sipariş numarası), "customer_id" (müşteri numarası), "order_date" (sipariş tarihi) ve "total_amount" (toplam tutar) sütunları bulunmalıdır. Sütunlarda aşağıdaki kısıtlamaları uygulayın:
--"order_id" sütunu için benzersizlik kısıtlaması (unique constraint) uygulayın.
--"customer_id" sütunu için boş değer kabul etmeyen kısıtlama (not null constraint) uygulayın.
--"order_date" sütunu için geçerli bir tarih değeri kabul eden kısıtlama (check constraint) uygulayın: Sipariş tarihi bugünden önce olmalıdır.
--"total_amount" sütunu için pozitif değer kabul eden kısıtlama (check constraint) uygulayın: Toplam tutar sıfırdan büyük olmalıdır.


CREATE TABLE ORDERS(

      order_id INT UNIQUE ,
	  customer_id INT NOT NULL,
	  order_date DATE CHECK(order_date< CURRENT_DATE),
	  total_amount REAL CHECK (total_amount>0)


);

SELECT * FROM ORDERS