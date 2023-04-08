create table proje1.dersler(
id int not null, 
dersAdi varchar(45),
kont int,
primary key(id)
);

create table proje1.urunler(
urunId int not null,
urunAdi varchar(45),
fiyat double,
primary key(urunId)
);

insert into proje1.urunler values(1, "bilgisayar", 12);
insert into proje1.urunler values(2, "elma", 20);
insert into proje1.urunler values(3, "oda", 240);
insert into proje1.urunler(urunId, urunAdi) values(4, "armut");
insert into proje1.urunler values(5, "masa", 100.5);
select * from proje1.urunler;

drop table proje1.ogrenciler;