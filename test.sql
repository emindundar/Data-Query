-- 1. EMPLOYEE TABLOSU OLUŞTURMA
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. MOCKAROO VERİLERİ İLE 50 ADET KAYIT EKLEME
INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'Ahmet Yılmaz', '1985-03-15', 'ahmet.yilmaz@email.com'),
(2, 'Ayşe Kaya', '1992-07-22', 'ayse.kaya@email.com'),
(3, 'Mehmet Demir', '1988-11-08', 'mehmet.demir@email.com'),
(4, 'Fatma Şahin', '1990-05-12', 'fatma.sahin@email.com'),
(5, 'Ali Özkan', '1987-09-03', 'ali.ozkan@email.com'),
(6, 'Zeynep Aydın', '1993-12-18', 'zeynep.aydin@email.com'),
(7, 'Mustafa Çelik', '1986-02-28', 'mustafa.celik@email.com'),
(8, 'Elif Polat', '1991-10-14', 'elif.polat@email.com'),
(9, 'Hasan Koç', '1989-06-07', 'hasan.koc@email.com'),
(10, 'Sema Arslan', '1994-01-25', 'sema.arslan@email.com'),
(11, 'İbrahim Taş', '1984-08-11', 'ibrahim.tas@email.com'),
(12, 'Gül Erdoğan', '1995-04-30', 'gul.erdogan@email.com'),
(13, 'Osman Yıldız', '1983-12-05', 'osman.yildiz@email.com'),
(14, 'Hatice Güneş', '1996-09-19', 'hatice.gunes@email.com'),
(15, 'Kemal Doğan', '1982-07-16', 'kemal.dogan@email.com'),
(16, 'Merve Öztürk', '1997-03-08', 'merve.ozturk@email.com'),
(17, 'Emre Bulut', '1981-11-22', 'emre.bulut@email.com'),
(18, 'Esra Kılıç', '1998-06-13', 'esra.kilic@email.com'),
(19, 'Serkan Yurt', '1980-02-04', 'serkan.yurt@email.com'),
(20, 'Dilek Özer', '1999-08-27', 'dilek.ozer@email.com'),
(21, 'Burak Çakır', '1985-05-09', 'burak.cakir@email.com'),
(22, 'Pınar Acar', '1992-01-14', 'pinar.acar@email.com'),
(23, 'Cem Işık', '1988-10-02', 'cem.isik@email.com'),
(24, 'Tülay Kurt', '1990-12-21', 'tulay.kurt@email.com'),
(25, 'Barış Özdemir', '1987-04-18', 'baris.ozdemir@email.com'),
(26, 'Sevgi Karaca', '1993-09-06', 'sevgi.karaca@email.com'),
(27, 'Onur Baş', '1986-07-24', 'onur.bas@email.com'),
(28, 'Gamze Şen', '1991-03-11', 'gamze.sen@email.com'),
(29, 'Tolga Ateş', '1989-11-29', 'tolga.ates@email.com'),
(30, 'Burcu Dal', '1994-08-15', 'burcu.dal@email.com'),
(31, 'Erdem Güler', '1984-06-01', 'erdem.guler@email.com'),
(32, 'Deniz Uçar', '1995-02-17', 'deniz.ucar@email.com'),
(33, 'Volkan Tekin', '1983-12-10', 'volkan.tekin@email.com'),
(34, 'Sibel Çetin', '1996-05-26', 'sibel.cetin@email.com'),
(35, 'Hüseyin Yaman', '1982-01-08', 'huseyin.yaman@email.com'),
(36, 'Canan Önal', '1997-09-23', 'canan.onal@email.com'),
(37, 'Ramazan Kara', '1981-07-12', 'ramazan.kara@email.com'),
(38, 'Emine Bozkurt', '1998-04-05', 'emine.bozkurt@email.com'),
(39, 'Çağlar Sözen', '1980-10-31', 'caglar.sozen@email.com'),
(40, 'Filiz Tunç', '1999-06-18', 'filiz.tunc@email.com'),
(41, 'Yasin Akın', '1985-02-14', 'yasin.akin@email.com'),
(42, 'Nalan Çiftçi', '1992-11-07', 'nalan.ciftci@email.com'),
(43, 'Umut Ergin', '1988-08-20', 'umut.ergin@email.com'),
(44, 'Serap Baran', '1990-04-03', 'serap.baran@email.com'),
(45, 'Alper Özkan', '1987-12-25', 'alper.ozkan@email.com'),
(46, 'Yasemin Toprak', '1993-01-16', 'yasemin.toprak@email.com'),
(47, 'Fikret Çelik', '1986-09-09', 'fikret.celik@email.com'),
(48, 'Nurhan Aydın', '1991-05-28', 'nurhan.aydin@email.com'),
(49, 'Recep Polat', '1989-03-21', 'recep.polat@email.com'),
(50, 'Melike Taşkın', '1994-10-13', 'melike.taskin@email.com');

-- 3. SÜTUNLARA GÖRE 5 ADET UPDATE İŞLEMİ

-- ID'ye göre güncelleme
UPDATE employee 
SET name = 'Ahmet Güncellendi', email = 'ahmet.guncellendi@email.com' 
WHERE id = 1;

-- İsme göre güncelleme
UPDATE employee 
SET birthday = '1990-01-01', email = 'ayse.yeni@email.com' 
WHERE name = 'Ayşe Kaya';

-- Doğum tarihine göre güncelleme
UPDATE employee 
SET name = 'Mehmet Güncellenmiş', email = 'mehmet.guncel@email.com' 
WHERE birthday = '1988-11-08';

-- Email'e göre güncelleme
UPDATE employee 
SET name = 'Fatma Değişti', birthday = '1992-06-15' 
WHERE email = 'fatma.sahin@email.com';

-- Yaş aralığına göre güncelleme (1985'ten önce doğanlar)
UPDATE employee 
SET email = CONCAT(LOWER(REPLACE(name, ' ', '.')), '@sirket.com')
WHERE birthday < '1985-01-01';

-- 4. SÜTUNLARA GÖRE 5 ADET DELETE İŞLEMİ

-- ID'ye göre silme
DELETE FROM employee WHERE id = 50;

-- İsme göre silme
DELETE FROM employee WHERE name = 'Melike Taşkın';

-- Doğum tarihine göre silme
DELETE FROM employee WHERE birthday = '1999-08-27';

-- Email'e göre silme
DELETE FROM employee WHERE email = 'caglar.sozen@email.com';

-- Yaş koşuluna göre silme (1999'dan sonra doğanlar)
DELETE FROM employee WHERE birthday > '1999-01-01';

-- VERİLERİ KONTROL ETMEK İÇİN
SELECT COUNT(*) as toplam_kayit FROM employee;
SELECT * FROM employee ORDER BY id LIMIT 10;