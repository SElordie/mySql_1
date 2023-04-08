SELECT round(maas, 1) FROM proje1.personel;

SELECT round(AVG(maas), 2) AS maas_avg FROM proje1.personel;

SELECT * FROM proje1.personel LIMIT 3;

								-- limit atlama sayisi, getirilen kayit sayisi
SELECT * FROM proje1.personel LIMIT 3, 2;

SELECT * FROM proje1.personel ORDER BY maas;

SELECT * FROM proje1.personel ORDER BY maas desc;

SELECT * FROM proje1.personel ORDER BY maas asc;

SELECT * FROM proje1.personel ORDER BY 5 desc;

SELECT * FROM proje1.personel ORDER BY maas desc limit 1;

SELECT * FROM proje1.personel WHERE yas = (SELECT yas FROM proje1.personel WHERE bolum IN("Yonetim", "Bakim") AND yas > 15 ORDER BY yas ASC LIMIT 1) AND bolum IN("Bakim", "Yonetim");
 
SELECT * FROM proje1.personel WHERE ad LIKE "%a%" ORDER BY ad;

SELECT AVG(maas) FROM proje1.personel;

SELECT maas FROM proje1.personel WHERE maas > (SELECT AVG(maas) FROM proje1.personel) ORDER BY maas LIMIT 1;

SELECT min(maas) FROM proje1.personel WHERE yas > (SELECT AVG(yas) FROM proje1.personel);

SELECT * FROM  proje1.personel WHERE maas = (SELECT min(maas) FROM proje1.personel WHERE yas > (SELECT AVG(yas) FROM proje1.personel));

DELETE FROM proje1.personel where id = 1;

SET sql_safe_updates = 0;

DELETE FROM proje1.personel;

DELETE FROM proje1.personel WHERE bolum = "Yonetim";

SELECT maas FROM proje1.personel WHERE maas > (SELECT AVG(maas) FROM proje1.personel) ORDER BY maas LIMIT 1;

DELETE FROM proje1.personel WHERE maas = (SELECT maas FROM proje1.personel WHERE maas > 5000);

START transaction;

SAVEPOINT savePoint;

DELETE FROM proje1.personel where id = 1; 

ROLLBACK TO savePoint;

SELECT * FROM proje1.personel;

TRUNCATE TABLE proje1.personel;
