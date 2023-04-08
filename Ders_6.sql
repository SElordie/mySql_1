SET sql_safe_updates = 0;

insert into proje1.personel values(1, "Yunus", "Bakim", 16, 4800.50);
insert into proje1.personel values(2, "Sena", "Personel", 15, 4250.25);
insert into proje1.personel values(3, "Ali", "Personel", 17, 5000.25);
insert into proje1.personel values(4, "Ahmet", "Yonetici", 14, 7000.50);
insert into proje1.personel values(5, "Zafer", "Yonetim", 16, 8000.50);
insert into proje1.personel values(6, "Huzeyfe", "CEO", 25, 25000.50);
insert into proje1.personel values(7, "Huzeyfe", "Tesis", 15, 5000.50);

UPDATE proje1.personel SET id = id + 10;

UPDATE proje1.personel SET bolum = "Tesis", yas = 20 WHERE id = 11;

UPDATE proje1.personel SET maas = maas + 2000 WHERE bolum = "Personel";

UPDATE proje1.personel SET bolum = "CEO" WHERE id = 16;

SELECT * FROM proje1.personel;

SELECT @maxMaas:= max(maas) as maxMaas from proje1.personel;

SELECT * FROM proje1.personel WHERE maas = @maxMaas;

SELECT @ortalamaYas:= AVG(yas) FROM proje1.personel;
SELECT @kckMaas:= min(maas) FROM proje1.personel WHERE yas>@ortalamaYas;
SELECT * FROM proje1.personel WHERE maas=@kckMaas;

UPDATE proje1.personel SET maas = maas - 500 WHERE bolum IN ("Bakim", "Personel");

ALTER TABLE proje1.personel ADD adres VARCHAR(150) DEFAULT  'Almanya';

ALTER TABLE proje1.personel ADD cinsiyet VARCHAR(50);

SELECT * FROM proje1.personel;

ALTER TABLE proje1.personel RENAME TO proje1.pers;

ALTER TABLE proje1.pers RENAME TO proje1.personel;

ALTER TABLE world.city RENAME TO world.city2;

UPDATE proje1.personel SET cinsiyet = 'erkek' WHERE id <> 12;

UPDATE proje1.personel SET cinsiyet = 'kiz' WHERE id = 12;

ALTER TABLE proje1.personel RENAME COLUMN bolum TO departman;

ALTER TABLE proje1.personel RENAME COLUMN ad TO isim;

ALTER TABLE proje1.personel MODIFY adres VARCHAR(200);

ALTER TABLE proje1.personel ALTER COLUMN adres SET DEFAULT 'Turkiye';

ALTER TABLE proje1.personel MODIFY adres VARCHAR(200) default 'Turkiye';

INSERT INTO proje1.personel(id, isim, departman, yas, maas, cinsiyet) values (19, 'Can', 'Tesis', 35, 7000, 'Erkek');

ALTER TABLE proje1.personel ADD CONSTRAINT CHECK (maas > 4000);

INSERT INTO proje1.personel(id, isim, departman, yas, maas, cinsiyet) values (20, 'Hasan', 'Tesis', 35, 5000, 'Erkek');

SELECT * FROM proje1.personel;
