-- 1. film tablosunda rental_rate sütununun ortalaması:
SELECT AVG(rental_rate) FROM film;

-- 2. 'C' karakteri ile başlayan film sayısı:
SELECT COUNT(*) FROM film 
WHERE title LIKE 'C%';

-- 3. rental_rate 0.99 olan en uzun filmin dakikası:
SELECT MAX(length) FROM film 
WHERE rental_rate = 0.99;

-- 4. Uzunluğu 150 dakikadan büyük filmlerin farklı replacement_cost değer sayısı:
SELECT COUNT(DISTINCT replacement_cost) FROM film 
WHERE length > 150;