create table odevler.urunler(
id int not null, 
urunAd varchar(10),
stockInfo varchar(50),
fiyat int,
primary key(id)
);

insert into odevler.urunler values(1, "Laptop", "var", 15000);
insert into odevler.urunler values(2, "Kitap", "var", 127);
insert into odevler.urunler values(3, "Telefon", "yok", 4230);
insert into odevler.urunler values(4, "Gozluk", "yok", 340);
insert into odevler.urunler values(5, "Parfum", "var", 920);

select * from odevler.urunler;