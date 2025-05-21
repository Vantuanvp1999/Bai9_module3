use quanlysinhvien;

select Address, count(StudentID) as 'Số lượng học viên'
from student
group by Address;

select S.StudentID, S.StudentName, avg(Mark)
from student S join Mark M on S.StudentID=M.StudentID
group by S.StudentID, S.StudentName;

select S.StudentID, S.StudentName, avg(Mark)
from student S join Mark M on S.StudentID=M.StudentID
group by S.StudentID, S.StudentName
having avg(Mark) >15;

select S.StudentID, S.StudentName, avg(Mark)
from student S join Mark M on S.StudentID=M.StudentID
group by S.StudentID, S.StudentName
having avg(Mark) >= all(select avg(Mark) from mark group by Mark.StudentID)