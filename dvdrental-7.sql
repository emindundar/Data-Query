-- 1. film tablosunda rating değerlerine göre gruplama:
SELECT rating FROM film 
GROUP BY rating;

-- 2. replacement_cost'a göre gruplandığında 50'den fazla film olan değerler:
SELECT replacement_cost, COUNT(*) FROM film 
GROUP BY replacement_cost 
HAVING COUNT(*) > 50;

-- 3. customer tablosunda store_id değerlerine karşılık müşteri sayıları:
SELECT store_id, COUNT(*) FROM customer 
GROUP BY store_id;

-- 4. city tablosunda en fazla şehir barındıran country_id ve şehir sayısı:
SELECT country_id, COUNT(*) as sehir_sayisi FROM city 
GROUP BY country_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;