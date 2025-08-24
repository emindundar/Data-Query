-- 1. City ve Country tablolarını birleştiren INNER JOIN sorgusu
-- Şehir ve ülke isimlerini birlikte görüntüler
SELECT 
    c.city,
    co.country
FROM city c
INNER JOIN country co ON c.country_id = co.country_id
ORDER BY co.country, c.city;

-- 2. Customer ve Payment tablolarını birleştiren INNER JOIN sorgusu
-- Payment ID ile müşteri adı ve soyadını birlikte görüntüler
SELECT 
    p.payment_id,
    c.first_name,
    c.last_name
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id
ORDER BY p.payment_id;

-- 3. Customer ve Rental tablolarını birleştiren INNER JOIN sorgusu
-- Rental ID ile müşteri adı ve soyadını birlikte görüntüler
SELECT 
    r.rental_id,
    c.first_name,
    c.last_name
FROM customer c
INNER JOIN rental r ON c.customer_id = r.customer_id
ORDER BY r.rental_id;