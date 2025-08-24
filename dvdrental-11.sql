-- 1. UNION - actor ve customer tablolarındaki tüm first_name verileri (benzersiz)
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer
ORDER BY first_name;

-- 2. INTERSECT - actor ve customer tablolarındaki kesişen first_name verileri
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer
ORDER BY first_name;

-- 3. EXCEPT - actor tablosunda bulunan ancak customer tablosunda bulunmayan first_name verileri
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;

-- 4. Aynı sorgular tekrar eden veriler için (UNION ALL, INTERSECT ALL, EXCEPT ALL)

-- 4.1. UNION ALL - tüm veriler tekrarlarla birlikte
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;

-- 4.2. INTERSECT için tekrar eden veriler (MSSQL'de INTERSECT ALL yok, alternatif çözüm)
SELECT a.first_name
FROM actor a
INNER JOIN customer c ON a.first_name = c.first_name
ORDER BY a.first_name;

-- 4.3. EXCEPT için tekrar eden veriler (MSSQL'de EXCEPT ALL yok, alternatif çözüm)
SELECT a.first_name
FROM actor a
LEFT JOIN customer c ON a.first_name = c.first_name
WHERE c.first_name IS NULL
ORDER BY a.first_name;