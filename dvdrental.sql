-- Film tablosunda title ve description sütunları
SELECT title, description FROM film;

--Film tablosunda length 60-75 arası olan kayıtlar
SELECT * FROM film WHERE length > 60 AND length < 75;

-- Film tablosunda belirtilen rental_rate ve replacement_cost koşulları
SELECT * FROM film 
WHERE rental_rate = 0.99 
AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

-- Customer tablosunda first_name 'Mary' olan müşterinin last_name değeri
SELECT last_name FROM customer WHERE first_name = 'Mary';

-- Film tablosunda length ≤50 VE rental_rate 2.99 veya 4.99 olmayan kayıtlar
SELECT * FROM film 
WHERE length <= 50 
AND rental_rate NOT IN (2.99, 4.99);