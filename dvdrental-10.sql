-- 1. LEFT JOIN: city tablosu ile country tablosunu birleştirme
-- Tüm şehirler gösterilir, eşleşmeyen ülkeler NULL olarak görünür
SELECT 
    c.city_id,
    c.city,
    co.country_id,
    co.country
FROM city c
LEFT JOIN country co ON c.country_id = co.country_id
ORDER BY c.city;

-- 2. RIGHT JOIN: payment tablosu ile customer tablosunu birleştirme  
-- Tüm müşteriler gösterilir, payment_id ile birlikte
SELECT 
    p.payment_id,
    p.amount,
    p.payment_date,
    c.customer_id,
    c.first_name,
    c.last_name
FROM payment p
RIGHT JOIN customer c ON p.customer_id = c.customer_id
ORDER BY c.customer_id;

-- 3. FULL JOIN: rental tablosu ile customer tablosunu birleştirme
-- Hem tüm kiralama kayıtları hem de tüm müşteriler gösterilir
SELECT 
    r.rental_id,
    r.rental_date,
    r.return_date,
    c.customer_id,
    c.first_name,
    c.last_name
FROM rental r
FULL JOIN customer c ON r.customer_id = c.customer_id
ORDER BY r.rental_id;