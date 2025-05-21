use quanlysinhvien;

select * from student
where lower(StudentName) like "h%";

select * from class
where month(StartDate) = 12;

select * from subject
where credit between 3 and 5;


update student
set ClassID =2
where StudentID =1;

select S.StudentName, Sub.Subname, M.Mark
from student S join mark M on S.StudentID = M.StudentID join subject sub on M.SubID = sub.SubID
order by M.Mark desc,
S.StudentName asc;