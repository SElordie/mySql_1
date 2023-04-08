CREATE TABLE quizler.orders(
id int not null primary key,
email varchar(20),
adSoyad varchar(40),
urun varchar(40),
tarih date,
adres varchar(40),
tel varchar(6) unique,
fiyat int,
adet int,
toplamFiyat int
);

INSERT INTO quizler.orders VALUES (1, 'yns@gmail.com', 'Yunus Ata', 'Laptop', curdate(), 'Str Mih 16', '622914', 2500, 20, (adet * fiyat));
INSERT INTO quizler.orders VALUES (2, 'sst@gmail.com', 'Sezer Ekmek', 'Ozel Kitap', curdate(), 'Str Kah 14', '610274', 20, 150, (adet * fiyat));
INSERT INTO quizler.orders VALUES (3, 'ahm@gmail.com', 'Ahmet Karagoz', 'Canta', curdate(), 'Str Lem 12', '686843', 10, 100, (adet * fiyat));
INSERT INTO quizler.orders VALUES (4, 'lod@gmail.com', 'Lodyi Veli', 'TV', curdate(), 'Str Soj 19', '091233', 7000, 15, (adet * fiyat));
INSERT INTO quizler.orders VALUES (5, 'lev@gmail.com', 'Levent Karacorba', 'Masa', curdate(), 'Str Cas 27', '129642', 1000, 40, (adet * fiyat));
INSERT INTO quizler.orders VALUES (6, 'mur@gmail.com', 'Murat Buyuk', 'Telefon', curdate(), 'Str Loa 2', '773418', 5000, 80, (adet * fiyat));
INSERT INTO quizler.orders VALUES (7, 'ysf@gmail.com', 'Yusuf Aygoz', 'Ipad', curdate(), 'Str Nov 16', '881270', 8000, 55, (adet * fiyat));
INSERT INTO quizler.orders VALUES (8, 'kah@gmail.com', 'Kahraman Cukur', 'Gozluk', curdate(), 'Str Som 18', '124872', 5, 500, (adet * fiyat));
INSERT INTO quizler.orders VALUES (9, 'abd@gmail.com', 'Abdul Arap', 'Sarj Alet', curdate(), 'Str Pah 20', '764193', 570, 700, (adet * fiyat));
INSERT INTO quizler.orders VALUES (10, 'hal@gmail.com', 'Halit Topcu', 'Ayakkabi', curdate(), 'Str Doi 23', '973144', 300, 250, (adet * fiyat));

-- 1) toplamfiyati 25 euro dan fazla olan siparislerin sayisini gosteriniz
SELECT id AS siparis_sayisi FROM quizler.orders WHERE toplamFiyat > 25;
-- 2) Toplam kazanilan parayi yaziniz
SELECT sum(toplamFiyat) AS kazanilan FROM quizler.orders;
-- 3) en yuksek ve en dusuk siparisin tum bilgilerini gertiriniz
SELECT * FROM quizler.orders WHERE adet = (SELECT min(adet) AS enkck FROM quizler.orders);
-- 4) ortalama kazanilan parayi virgulden sonra 2 basamakli olarak getiriniz
SELECT AVG(toplamFiyat) AS ortalama_fiyat FROM quizler.orders;
-- 5) Urun isimlerini buyuk harfli olarak gosteriniz
SELECT upper(urun) as bykUrun FROM quizler.orders;
-- 6) Urun isimlerinin sadece ilk harfini buyuk harfli olarak gosteriniz
SELECT upper(substr(urun, 1, 1)) AS bykHarf FROM quizler.orders;
-- 7) Toplam fiyati en yuksek olan 3 siparisi yazdiriniz
SELECT * FROM quizler.orders ORDER BY toplamFiyat desc LIMIT 3;
-- 8) Urunlerin icinde a harfi olanlari urun ismine gore siralayiniz
SELECT * FROM quizler.orders WHERE urun LIKE "_a%" OR urun LIKE "A_%";
-- 9) Siparis miktari 15 Euro dan fazla olanlari silelim
-- Bu dokuzuncu soruyu anlamadik
-- 10) Delete Truncate Drop arasindaki fark nedir?
-- Truncate yapmak cok ciddi biseydir bunu yapmadan once emin olmak lazim cunku geri donusu nerdeyse yok, olsa bile cok zor.
-- Drop tum table siler, truncate ise satirlari siler tablein icindeki
