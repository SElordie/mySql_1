CREATE TABLE std.persons (
personId int not null unique primary key,
firstName varchar(30),
lastName varchar(30),
aga int not null
);

CREATE TABLE std.orders (
orderId int not null unique,
orderNr int not null,
personId int,
primary key (orderId),
foreign key (personId) references persons(personId)
);

ALTER TABLE std.orders
ADD FOREIGN KEY (personID) REFERENCES persons(personID);