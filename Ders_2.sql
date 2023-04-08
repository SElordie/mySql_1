create table proje1.person(
id int not null, 
adi varchar(10),
soyAdi varchar(20),
yas int,
primary key(id)
);

insert into proje1.person values(1, "Ali", "Korkmaz", 17);
insert into proje1.person values(2, "Kara", "Yunus", 15);

select * from proje1.person;

create table proje1.student(
id int not null,
ad varchar(45) not null,
not_ort double,
kayit_tarihi date,
primary key(id)
);

insert into proje1.student values(1, "Ali", 85.85, curdate());
insert into proje1.student values(2, "Can", 65.85, curdate());
select * from proje1.student;

create table proje1.siniflar(
id int not null,
sinifAdi varchar(5) not null unique,
kayitZamani datetime,
primary key(id)
);

insert into proje1.siniflar values(1, "2/A", now());
insert into proje1.siniflar values(2, "3/A", "2023-03-08 20:10:15");

select * from proje1.siniflar;

create table proje1.kisiler(
id int not null auto_increment,
adi varchar(45),
primary key(id)
);

insert into proje1.kisiler(adi) values("Ali");
insert into proje1.kisiler(adi) values("Sena");

select * from proje1.kisiler;

create table proje1.persons(
id int not null,
adi varchar(45),
yas int,
check (yas > 18),
primary key(id)
);

create table proje1.person3(
id int not null,
adi varchar(45),
yas int,
check (yas >= 18 && yas < 25),
primary key(id)
);

insert into proje1.person3 values(1, "Sena", 20);
insert into proje1.person3 values(2, "Can", 18);


select * from proje1.person3;


create table proje1.Orders(
id int not null,
price double,
orderDate datetime default now(),
primary key(id)
);

insert into proje1.Orders(id, price) values(1, 35.55);
select * from proje1.Orders;

create table proje1.Orders2(
id int not null,
price double default 0,
orderDate datetime default now(),
primary key(id)
);

insert into proje1.Orders2(id) values(1);
select * from proje1.product;


create table proje1.product(
id int not null auto_increment,
adi varchar(20) not null,
fiyat int,
check (fiyat > 0),
num int unique,
orderDate datetime default now(),
primary key(id)
);

insert into proje1.product(adi, fiyat, num, orderDate) values("Laptop", 15000, 17, "2023-03-08 20:10:15");
insert into proje1.product(adi, fiyat, num, orderDate) values("Mouse", 840, 12, "2023-03-08 23:17:9");


