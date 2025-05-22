create database demo1;
use demo1;
CREATE TABLE Products (
   Id int auto_increment primary key,
   productCode varchar(50) not null,
   productName varchar(100) not null,
   productPrice decimal(10,2) not null,
   productAmount int not null,
   productDescription text,
   productStatus varchar(20) not null
);

-- Chèn dữ liệu mẫu vào bảng Products
INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus) 
VALUES
('P001', 'Laptop Dell Inspiron 15', 799.99, 10, 'Laptop 15 inch với vi xử lý Intel i5, RAM 8GB, SSD 256GB', 'Available'),
('P002', 'Chuột không dây Logitech M185', 19.99, 50, 'Chuột không dây tiện dụng, kết nối USB receiver', 'Available'),
('P003', 'Bàn phím cơ Keychron K6', 89.00, 20, 'Bàn phím cơ bluetooth, layout 65%, switch Gateron Brown', 'Out of Stock'),
('P004', 'Màn hình Samsung 24 inch', 149.50, 15, 'Màn hình LED Full HD, tần số quét 75Hz', 'Available'),
('P005', 'Ổ cứng SSD Samsung 1TB', 119.90, 5, 'Ổ cứng SSD tốc độ cao chuẩn SATA 2.5 inch', 'Available');

explain select * from products 
where productCode ='P003';

alter table products add unique index idx_productCode(productCode);

explain select * from products
where productName = 'Màn hình Samsung 24 inch' and productPrice = 149.50;

alter table products add index idx_product_Name_Price(productName,productPrice);

drop index idx_product_Name_Price on  products;
drop index idx_productCode on  products;

create view  product_view as
select id, productCode, productName, productPrice, productStatus
from products;

select * from product_view;

drop view product_view;

update product_view
set productPrice = 100.99
where id=2;

delimiter //
create procedure get_all_product()
begin 
select * from products;
end //
delimiter ;

drop procedure get_all_product;

call get_all_product();

delimiter //
create procedure add_product(
in p_productCode varchar(50),
in p_productName varchar(100),
in p_productPrice decimal(10,2),
in p_productAmount int,
in p_productDescription text,
in p_productStatus varchar(20)
)
begin
insert into  products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
values (p_productCode,p_productName,p_productPrice,p_productAmount,p_productDescription,p_productStatus);
end//
delimiter ;
 
 call add_product('P001', 'iPhone 15', 999.99, 50, 'Apple smartphone, 128GB', 'Available');

delimiter //
create procedure update_product(
in p_id int,
in p_productCode varchar(50),
in p_productName varchar(100),
in p_productPrice decimal(10,2),
in p_productAmount int,
in p_productDescription text,
in p_productStatus varchar(20)
)
begin
update products
set productCode = p_productCode,
productName = p_productName,
productPrice =p_productPrice,
productAmount=p_productAmount,
productDescription=p_productDescription,
productStatus=p_productStatus
where Id=p_id;
end//
delimiter ;

call update_product(6,'F001', 'iPhone 15', 999.99, 50, 'Apple smartphone, 128GB', 'Available');

