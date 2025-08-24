-- 1. 'n' ile biten en uzun 5 film:
SELECT * FROM film 
WHERE title LIKE '%n' 
ORDER BY length DESC 
LIMIT 5;

-- 2. 'n' ile biten en kısa ikinci 5 film (6-10. sıradakiler):
SELECT * FROM film 
WHERE title LIKE '%n' 
ORDER BY length ASC 
LIMIT 5 OFFSET 5;

-- 3. store_id=1, last_name'e göre azalan sıralı ilk 4 müşteri:
SELECT * FROM customer 
WHERE store_id = 1 
ORDER BY last_name DESC 
LIMIT 4;