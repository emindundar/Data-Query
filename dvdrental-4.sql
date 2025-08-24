-- 1. film tablosunda replacement_cost sütunundaki farklı değerler:
SELECT DISTINCT replacement_cost FROM film 
ORDER BY replacement_cost;

-- 2. film tablosunda replacement_cost sütunundaki farklı değer sayısı:
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- 3. film tablosunda 'T' ile başlayan ve rating 'G' olan film sayısı:
SELECT COUNT(*) FROM film 
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. country tablosunda 5 karakterden oluşan ülke sayısı:
SELECT COUNT(*) FROM country 
WHERE LENGTH(country) = 5;

-- 5. city tablosunda 'R' veya 'r' ile biten şehir sayısı:
SELECT COUNT(*) FROM city 
WHERE city LIKE '%R' OR city LIKE '%r';

-- Alternatif olarak 5. sorgu için büyük-küçük harf duyarsız yaklaşım:
SELECT COUNT(*) FROM city 
WHERE UPPER(city) LIKE '%R';