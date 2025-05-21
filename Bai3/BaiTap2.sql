use quanlybanhang;

insert into Customer
values(1,'Minh Quan',10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

insert into order1 (oID, cID, oDate)
values('1','1','2006-3-21'),
('2','2','2006-3-23'),
('3','1','2006-3-16');

insert into product
values('1','May Giat',3), 
('2','Tu lanh',5),
('3','Dieu hoa',7),
('4','Quat',1),
('5','Bep dien',2);

insert into orderdetail
values('1','1',3),
('1','3',7),
('1','4',2),
('2','1',1),
('3','1',8),
('2','5',4),
('2','3',3);

select oID, oDate, oTotalPrice from order1;

select C.cID, C.cName, O.oID 
from Customer C join Order1 O on C.cID = O.cID;

Select C.cID, C.cName,O.oID, P.pName, OD.odQTY
from Customer C join Order1 O on C.cID = O.cID
join orderdetail OD on O.oID = OD.oID
join product P on OD.pID = P.pID;

select C.cID, C.cName, O.oID 
from Customer C left join Order1 O on C.cID = O.cID
where O.oID is null;

select O.oID, O.oDate,sum(P.pPrice*OD.odQTY) as TotalPrice
From order1 O
Join orderdetail OD on O.oID = OD.oID
join Product P on OD.pID = P.pID
group by O.oID, O.oDate;