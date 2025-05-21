create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID varchar(20) not null primary key,
cName varchar(50) not null,
cAge int
);
create table Order1(
oID varchar(20) not null primary key,
cID varchar(20) not null,
oDate datetime,
oTotalPrice float,
foreign key (cID) references Customer (cID)
);
create table Product(
pID varchar(20) not null primary key,
pName varchar(50),
pPrice float
);
create table OrderDetail(
oID varchar(20) not null,
pID varchar(20) not null,
odQTY int default 1,
primary key(oID,pID),
foreign key (oID) references Order1(oID),
foreign key (pID) references Product(pID)
);

alter table Customer
 modify cID int;
 