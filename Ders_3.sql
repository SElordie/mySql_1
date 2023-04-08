create table proje1.customer(
id int not null auto_increment,
adi varchar(20) not null,
adres varchar(35),
kayitTarihi datetime default now(),
yas int,
check(yas > 18),
primary key(id)
);

insert into proje1.customer(adi, adres, kayitTarihi, yas) values("Yunus", "Str. Mhem 17", "2023-05-07 20:15:10", 27);

select * from proje1.customer;


create table proje1.musteriler(
id int not null auto_increment,
ssn varchar(9) not null unique,
isim varchar(30),
adres varchar(50),
kytTarih datetime default now(),
yas int,
primary key(id)
);

insert into proje1.musteriler(ssn, isim, adres, yas) values("687221204", "Ali", "Bukres", 27);
insert into proje1.musteriler(ssn, isim, adres, yas) values("722104563", "Ahmet", "Ankara", 10);
insert into proje1.musteriler(ssn, isim, adres, yas) values("144027659", "Sena", "Frankfurt", 24);
insert into proje1.musteriler(ssn, isim, adres, yas) values("715441659", "Ahmet", "Paris", 19);
insert into proje1.musteriler(ssn, isim, adres, yas) values("662108893", "Ahmet", "Munich", 12);
insert into proje1.musteriler(ssn, isim, adres, yas) values("662346889", "Yunus", "Kostence", 16);

select * from proje1.musteriler;

select isim, adres, yas from proje1.musteriler;
select kytTarih, isim from proje1.musteriler;

select * from proje1.musteriler where isim = "Ali";

select ssn from proje1.musteriler where isim = "Sena";

select * from proje1.musteriler where yas > 20;

insert into proje1.musteriler(ssn, isim, adres, kytTarih, yas) values("721384642", "Fuad", "Munich", "2022-02-02 08:15:00", 30);

select * from proje1.musteriler where kytTarih < "2023-01-01 00:00:00";

select * from proje1.musteriler where isim = "Ahmet" and yas > 12;

select isim from proje1.musteriler where yas >=16 and yas <=28;

select * from proje1.musteriler where (id >=2 and id <= 4) or (yas > 20);

select * from proje1.musteriler where yas between 16 and 25;

select * from proje1.musteriler where id in(2, 6, 3);

-- ^
-- | ayni sey !!!
-- v

select * from proje1.musteriler where id = 2 or id = 3 or id = 6;

select * from proje1.musteriler where adres in("Istanbul", "Bukres", "Ankara");

select * from proje1.musteriler where isim like "_l%";

select * from proje1.musteriler where isim like "_u%n%";

select * from proje1.musteriler where isim like "__f%";
select * from proje1.musteriler where ssn like "%82";

select * from proje1.musteriler;


