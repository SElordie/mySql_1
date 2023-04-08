create table odevler.ogrSnf(
id int primary key not null auto_increment,
ad varchar(20),
yas int,
sinif varchar(3),
not_ortalamasi double
);

insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Yunus", 19, '10b', 70.5);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Sena Nur", 15, "9b", 99.9);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Ahmet", 17, "8a", 67);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Elif Berra",16, "10b", 88);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Mehmet", 14, "10c", 89.8);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Zeynep", 18, "9a", 33.2);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Zafer", 18, "10b", 9.8);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Batuhan", 17, "11c", -90);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Tugce",18, "11b", 45.1);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Melda", 14, "7d", 63);
insert into odevler.ogrSnf (ad, yas, sinif, not_ortalamasi) values("Nurcen", 9, "9a", 83.88);

select sinif, count(id) as notu_70_veya_buyuk from odevler.ogrSnf where not_ortalamasi >= 70 group by sinif;
select sinif, max(not_ortalamasi) from odevler.ogrSnf group by sinif;
select sinif from odevler.ogrSnf where max(not_ortalamasi) group by sinif;

