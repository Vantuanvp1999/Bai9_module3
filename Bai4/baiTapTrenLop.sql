create database if not exists quan_ly_ban_hang;
use quan_ly_ban_hang;

create table khach_hang(
ma_khach_hang varchar(5) primary key,
ho_va_ten_lot varchar(50),
ten varchar(50),
dia_chi varchar(255),
email varchar(50),
dien_thoai varchar(13)
);

create table san_pham(
ma_san_pham int primary key auto_increment,
ten_sp varchar(50),
mo_ta varchar(255),
so_luong int check ( so_luong>=0 ),
don_gia decimal(15,2) check (don_gia>=0)
);

create table hoa_don(
ma_hoa_don int primary key auto_increment,
ngay_mua_hang date,
ma_khach_hang varchar(5),
trang_thai varchar(30),
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang)
);
create table hoa_don_chi_tiet(
ma_hoa_don_chi_tiet int primary key auto_increment,
ma_hoa_don int,
ma_san_pham int,
so_luong int,
foreign key (ma_hoa_don) references hoa_don(ma_hoa_don),
foreign key(ma_san_pham) references san_pham(ma_san_pham)
);
INSERT INTO khach_hang VALUES
('KH001', 'Nguyen Van', 'An', '123 Le Loi, Q1, HCM', 'an.nguyen@example.com', '0901234567'),
('KH002', 'Tran Thi', 'Bich', '45 Hai Ba Trung, HN', 'bich.tran@example.com', '0912345678'),
('KH003', 'Le Hoang', 'Cuong', '78 Tran Hung Dao, HCM', 'cuong.le@example.com', '0931234567'),
('KH004', 'Pham Van', 'Duc', '321 Nguyen Trai, HN', 'duc.pham@example.com', '0971234567'),
('KH005', 'Do Thi', 'Em', '99 Ly Thuong Kiet, DN', 'em.do@example.com', '0981234567');

INSERT INTO san_pham (ten_sp, mo_ta, so_luong, don_gia) VALUES
('Laptop Dell', 'Laptop văn phòng 15 inch', 10, 15000000),
('iPhone 14', 'Điện thoại thông minh Apple', 15, 25000000),
('Tai nghe Sony', 'Tai nghe chống ồn', 30, 2500000),
('Bàn phím cơ', 'Bàn phím gaming RGB', 20, 1500000),
('Chuột không dây', 'Chuột Logitech M590', 25, 600000);

INSERT INTO hoa_don (ngay_mua_hang, ma_khach_hang, trang_thai) VALUES
('2025-05-20', 'KH001', 'Đã thanh toán'),
('2025-05-18', 'KH002', 'Chưa thanh toán'),
('2025-05-17', 'KH003', 'Đã hủy'),
('2025-05-19', 'KH004', 'Đang xử lý'),
('2025-05-21', 'KH005', 'Đã thanh toán');

INSERT INTO hoa_don_chi_tiet (ma_hoa_don, ma_san_pham, so_luong) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 4, 1),
(4, 5, 3);

select count(ma_khach_hang) 
from khach_hang;

select max(don_gia)
from san_pham;

select min(so_luong)
from san_pham;

select sum(so_luong) as tong_so_luong_san_pham 
from san_pham;

select count(ma_hoa_don) 
from hoa_don
where month(ngay_mua_hang)=5 and year(ngay_mua_hang)=2025 and trang_thai = 'Chưa thanh Toán';

select ma_hoa_don, count(ma_san_pham)
from hoa_don_chi_tiet
group by ma_hoa_don
having count(ma_san_pham) >=2;

select ma_hoa_don, ngay_mua_hang, ma_khach_hang
from hoa_don
order by ngay_mua_hang desc;



