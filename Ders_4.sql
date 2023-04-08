CREATE TABLE proje1.personel(
id int not null primary key,
ad varchar(50),
bolum varchar(50),
yas int,
maas double
);

insert into proje1.personel values(1, "Yunus", "Bakim", 16, 4800.50);
insert into proje1.personel values(2, "Sena", "Personel", 15, 4250.25);
insert into proje1.personel values(3, "Ali", "Personel", 17, 5000.25);
insert into proje1.personel values(4, "Ahmet", "Yonetici", 14, 7000.50);
insert into proje1.personel values(5, "Zafer", "Yonetim", 16, 8000.50);
insert into proje1.personel values(6, "Huzeyfe", "CEO", 25, 25000.50);
insert into proje1.personel values(7, "Huzeyfe", "Tesis", 15, 5000.50);

select * from proje1.personel;

select count(id) as personel_sayisi from proje1.personel;

select count(id) as buyukler from proje1.personel where yas > 15;

select count(ad) as isimliler from proje1.personel;

select count(distinct(ad)) as farkli_isimler_sayisi from proje1.personel;

select sum(maas) as toplam_maas from proje1.personel;

select sum(maas) as yonetim_maasi from proje1.personel where bolum = "Yonetim";

select sum(maas) as ss from proje1.personel where yas > 16 and bolum = "Yonetim";

select sum(yas) as hzf from proje1.personel where ad = "Huzeyfe";

select max(maas) as max_maas from proje1.personel;

select max(yas) as max_yas from proje1.personel;

select * from proje1.personel where yas = (select max(yas) from proje1.personel);

select min(maas) as min_maas from proje1.personel;

select min(yas) as enkck from proje1.personel;

select ad from proje1.personel where yas = (select min(yas) as enkck from proje1.personel);

select * from proje1.personel where ad like "%a%" or maas = (select min(maas) from proje1.personel);

select avg(maas) as ortalama_maas from proje1.personel;

select avg(yas) as yas_ortalama from proje1.personel;

select avg(maas) yaslilarin_maas_ort from proje1.personel where yas > (select avg(yas) from proje1.personel);

select ad, upper(ad) as bykAd from proje1.personel;

select ad, yas, ucase(ad) as bykAd from proje1.personel;

select upper(bolum) as bolumler from proje1.personel;

select ad, lower(ad) as kckAd from proje1.personel;

select lcase(bolum) as bolum_kckAd from proje1.personel;

select ad, length(ad) as uzunluk from proje1.personel;

select bolum, length(bolum) as uzunluk from proje1.personel;

select ad, substr(ad, 3) as parcali from proje1.personel;

select ad, substr(ad, 3, 2) as parcali from proje1.personel;

select substr(bolum, 2,2) parcali from proje1.personel;