create database QuanLySinhVien;
use QuanLySinhVien;

create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit 
);
create table Student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key (ClassID) references Class(ClassID)
);
create table Subject(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (credit >= 1),
Status bit default 1 
);
create table Mark(
MarkID int not null	primary key auto_increment,
SubID int not null,
StudentID int not null,
Mark float default 0 check (mark between 0 and 100),
ExamTimes tinyint default 1,
unique key (SubID, StudentID),
foreign key (SubID) references Subject(SubID),
foreign key (StudentID) references Student(StudentID)
);
insert into Class
values (1,'A1','2008-12-20',1);
insert into Class
values (2,'A2','2008-12-22',1);
insert into Class
values (3,'B3',current_date(),0);

insert into student (StudentName, Address, Phone, Status, ClassID)
values ('Hung', 'Ha noi', '0912113113', 1, 1);
insert into student (StudentName, Address, Status, ClassID)
values ('Hoa', 'Hai phong', 1, 1);
insert into student (StudentName, Address, Phone, Status, ClassID)
values ('Manh', 'HCM', '0123123123', 0, 2);

insert into subject
values (1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);

insert into mark (SubID, StudentID, Mark, ExamTimes)
values (1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1)



