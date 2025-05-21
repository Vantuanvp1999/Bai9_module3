use quanlysinhvien;
Select * from student
where Status = true;
 
select * 
from student;

select *
from subject
where Credit < 10;

select S.StudentID, S.StudentName, C.ClassName
from student S join Class C on S.ClassID = C.ClassID
where ClassName ='A1';

select S.StudentID, S.StudentName, sub.Subname, M.Mark
from Student S join mark M on S.StudentID = M.StudentID join subject sub on M.SubID= sub.SubID
where sub.SubName = 'CF';