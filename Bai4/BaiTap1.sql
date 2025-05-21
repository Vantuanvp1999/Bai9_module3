use quanlysinhvien;

select * from subject
where Credit = ( select max(Credit) from subject);

select SUB.SubID, SUB.SubName, SUB.Credit, SUB.Status, M.Mark
from subject SUB join mark M on SUB.SubID = M.SubID
where M.Mark = ( select max(Mark) from mark);

select S.StudentID, S.StudentName, avg(Mark) as 'Average Mark'
from student S join mark M on S.StudentID = M.StudentID
group by S.StudentID, StudentName
order by avg(Mark);