USE proje1;

CREATE TABLE url(
urun_id int primary key auto_increment,
urun_adi varchar(50),
fiyat double
);


insert into url(urun_adi, fiyat) values ('Hamburger', 8.50);
insert into url(urun_adi, fiyat) values('Cheeseburger', 10.50);
insert into url(urun_adi, fiyat) values('Sucuk Burger', 11);

select * from url;

CREATE TABLE spr(
siparis_id int primary key auto_increment,
urun_id int,
adet int,
toplam_fiyat double,
adres varchar(255), 
foreign key (urun_id) references url (urun_id)
-- on delete cascade
-- on update cascade
on delete set null
on update set null
);

insert into spr(urun_id, adet, toplam_fiyat, adres) values(14, 5, 42.5, 'Istanbul');
insert into spr(urun_id, adet, toplam_fiyat, adres) values(12, 1, 11, 'Istanbul');
insert into spr(urun_id, adet, toplam_fiyat, adres) values(13, 2, 21, 'Ankara');

delete from url where urun_id = 1;
select * from url;
select * from spr;

set sql_safe_updates = 0;
update url set urun_id = urun_id + 10;

CREATE TABLE kategoriler(
kat_id int auto_increment primary key,
kat_adi varchar(100)
);

insert into kategoriler(kat_adi) values('Computer');
insert into kategoriler(kat_adi) values('Telefon');
insert into kategoriler(kat_adi) values('Mobilya');

select * from kategoriler;

CREATE TABLE pdcts(
product_id int primary key auto_increment,
kat_id int,
product_adi varchar(100),
product_fiyat double,
foreign key (kat_id) references kategoriler(kat_id)
on delete cascade
on update cascade
);


insert into pdcts(kat_id, product_adi, product_fiyat) values(1, 'Dell', 1000);
insert into pdcts(kat_id, product_adi, product_fiyat) values(2, 'Samsung', 700);
insert into pdcts(kat_id, product_adi, product_fiyat) values(3, 'Bulasik Makinasi', 700);
insert into pdcts(kat_id, product_adi, product_fiyat) values(1, 'Asus', 1200);
insert into pdcts(kat_id, product_adi, product_fiyat) values(3, 'Camasir Makinasi', 8000);

delete from kategoriler where kat_id = 3;

select * from kateghoriler, pdcts;

select kategoriler.kat_id, kategoriler.kat_adi, pdcts.product_adi, pdcts.product_fiyat 
from pdcts
left join kategoriler
on kategoriler.kat_id = pdcts.kat_id;

