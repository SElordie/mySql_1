ALTER TABLE proje1.personel RENAME COLUMN departman TO bolum;

SELECT bolum, count(id) AS Calisan_Sayisi FROM proje1.personel GROUP BY bolum;

SELECT bolum, min(maas) AS min_maas FROM proje1.personel GROUP BY bolum;

SELECT bolum, round(AVG(maas), 1) AS ort_maas FROM proje1.personel GROUP BY bolum;

SELECT bolum, sum(maas) as toplam_maas FROM proje1.personel GROUP BY bolum;

SELECT bolum, max(maas) as max_maas FROM proje1.personel GROUP BY bolum HAVING AVG(maas) > 6000;

SELECT bolum, AVG(maas) AS ort_maas FROM proje1.personel GROUP BY bolum HAVING sum(maas) > 10000;

SELECT bolum, sum(maas) as toplam_mas FROM proje1.personel GROUP BY bolum HAVING count(id) > 1;

SELECT * FROM proje1.personel WHERE maas > 6000
UNION
SELECT * FROM proje1.personel WHERE maas > 4000;

SELECT isim, bolum, yas FROM proje1.personel WHERE maas > 6000
UNION
SELECT isim, bolum, yas FROM proje1.personel WHERE isim = 'Yunus';

CREATE TABLE proje1.pinfo(
id int primary key,
tel varchar(10) unique,
cocukSay int
);

INSERT INTO proje1.pinfo values(11, '1234567891', 1);
INSERT INTO proje1.pinfo values(12, '1234567892', 3);
INSERT INTO proje1.pinfo values(13, '1234567893', 2);
INSERT INTO proje1.pinfo values(14, '1234567894', 1);
INSERT INTO proje1.pinfo values(15, '1234567895', 4);
INSERT INTO proje1.pinfo values(16, '1234567896', 1);
INSERT INTO proje1.pinfo values(17, '1234567897', 2);
INSERT INTO proje1.pinfo values(18, '1234567898', 3);
INSERT INTO proje1.pinfo values(19, '1234567899', 1);
INSERT INTO proje1.pinfo values(20, '1234567890', 4);

SELECT * FROM proje1.pinfo;

SELECT id, isim AS isim_tel FROM proje1.personel
UNION 
SELECT id, tel FROM proje1.pinfo;

SELECT id, isim FROM proje1.personel WHERE maas > 7000
UNION
SELECT id, tel FROM proje1.pinfo WHERE cocukSay in (1, 2);