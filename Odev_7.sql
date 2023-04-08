use odevler;
create table fakulteler(
fakulte_id int primary key auto_increment unique,
isim varchar(50),
adres varchar(50)
);

insert into fakulteler(isim, adres)values("Muhendislik Fakultesi","Antalya");
insert into fakulteler(isim, adres)values("Tip Fakultesi","Istanbul");
insert into fakulteler(isim, adres)values("Spor Fakultesi","Izmir");

select * from fakulteler;

create table bolumler(
bolum_id int primary key auto_increment,
fakulte_id int,
isim varchar(50),
foreign key (fakulte_id) references fakulteler(fakulte_id)
);

insert into bolumler(fakulte_id, isim)values(1, "Bilgisayar Muhendisligi");
insert into bolumler(fakulte_id, isim)values(1, "IT Muhendisligi");
insert into bolumler(fakulte_id, isim)values(2, "Gastroenterologie");
insert into bolumler(fakulte_id, isim)values(2, "Neurologie");
insert into bolumler(fakulte_id, isim)values(3, "Volleybol M.");
insert into bolumler(fakulte_id, isim)values(3, "Tennis M.");
select * from bolumler;

create table siniflar(
sinif_id int primary key auto_increment,
bolum_id int,
sinif varchar (4),
foreign key (bolum_id) references bolumler(bolum_id)
);
insert into siniflar (bolum_id, sinif) values(1, "201");
insert into siniflar (bolum_id, sinif) values(2, "107");
insert into siniflar (bolum_id, sinif) values(3, "89");
insert into siniflar (bolum_id, sinif) values(4, "07");
insert into siniflar (bolum_id, sinif) values(5, "34");
insert into siniflar (bolum_id, sinif) values(6, "456");
select * from siniflar;