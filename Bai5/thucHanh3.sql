use classicmodels;

delimiter //
create procedure getCusById
(in cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end //
delimiter ;

call getCusById(175);

delimiter //
create procedure getCustomersCountById 
(in in_City varchar(50),
out total int)
begin
select count(customerNumber) into total
from customers
where city = in_City;
end //
delimiter ;
call getCustomersCountById('Lyon',@total);
select @total; 

delimiter //
create procedure setCounter(
inout counter int,
in inc int)
begin
set counter = counter +inc;
end//
delimiter ;
Set @counter = 1;
call setCounter(@counter,1);
call setCounter(@counter,1);
call setCounter(@counter,5);
select @counter