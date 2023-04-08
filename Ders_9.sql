CREATE TABLE siparis(
siparis_id int primary key auto_increment,
urun_id int,
adet int,
toplam_fiyat double,
adres varchar(255), 
foreign key (kat_id) references kategoriler(kat_id)
-- on delete cascade
-- on update cascade
on delete set null
on update set null
);

insert into spr(urun_id, adet, toplam_fiyat, adres) values(1, 5, 42.5, 'Istanbul');
insert into spr(urun_id, adet, toplam_fiyat, adres) values(2, 2, 21, 'Ankara');
insert into spr(urun_id, adet, toplam_fiyat, adres) values(3, 1, 11, 'Ankara');

select * from siparis;
select * from urunler;

select s.siparis_id, u.urun_id, u.urun_adi, u.fiyat, s.adet, s.toplam_fiyat, s.adres from urunler unionleft join siparis s
on u.urun_id = s.urun_id;

