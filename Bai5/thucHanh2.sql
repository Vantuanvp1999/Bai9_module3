use classicmodels;

DELIMITER //

CREATE PROCEDURE findAllCustomers()

BEGIN

  SELECT * FROM customers;

END //

DELIMITER ;

call findAllCustomers();

DELIMITER //
drop procedure if exists findAllCustomers //
create procedure findAllCutomers()
begin
select * from customers where customerNumber = 175;
end  // 
DELIMITER ;

CALL findAllCutomers();