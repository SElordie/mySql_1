create table odevler.ogrenciler(
id int not null, 
ad varchar(10),
soyAd varchar(10),
adres varchar(50),
numara int,
primary key(id)
);

insert into odevler.ogrenciler values(1, "Yunus", "Atayev", "Str. Mihem 17", 631);
select * from odevler.ogrenciler;