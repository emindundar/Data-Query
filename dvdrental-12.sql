-- 1. Uzunluğu ortalama film uzunluğundan fazla olan filmlerin sayısı
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. En yüksek rental_rate değerine sahip film sayısı
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3. En düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmler
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;

-- 4. En fazla sayıda alışveriş yapan müşteriler (payment tablosuna göre)
SELECT customer_id, COUNT(*) AS alisveris_sayisi
FROM payment
GROUP BY customer_id
ORDER BY COUNT(*) DESC;