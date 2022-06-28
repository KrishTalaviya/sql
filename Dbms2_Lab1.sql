use Student_info_358

--Lab-1--
-
--1. Display Name of Student who belongs to either Semester 3 or 5. (Use IN & OR)
--1a
Select Name from Student where Sem in(3,5)
--1b
Select Name from Student where Sem=3 or Sem=5


--2. Find Student Name & Enrollment No in which Student Id between 103 to 105.
select Name,EnrollmentNo from Student where StuId between 103 and 105
--3. Find Student Name & Enrollment No with their Email Who belongs to 5th Semester.
select Name,EnrollmentNo,Email from Student where Sem=5 

--4. Display All the Details of first three students.
Select Top 3 * from Student
--5. Display Name & Enrollment no of first 30% Students who’s contact number ends with 7.
Select Top 30 percent * from Student where ContactNo like '%7'
--6. Display Unique Semesters.
Select Distinct * From Student where sem=3 or sem=5
--7. Retrieve All the Students who have no Enrollment.
select * from Student where EnrollmentNo is null
--8. Find All Students whose Name does not start with ‘V’.
select * from Student where Name not like'v%'

--9. Find All Students in which Email Contains ‘3@G’ & Only Six Characters.
select * from Student where Email like '%3@G%' and Email like '______'
--10. Find Out All the Students whose First Name Starts with F And third character must be R.
select * from Student where Name like 'F_R%'
--11. Find All the Student Details whose Contact No contains 877.
select * from Student where ContactNo like '%877%'
--12. Display Student Name in Which Student belongs to Semester 3 & Contact Number Does Not Contains 8 & 9.
select Name from Student where sem=3 and ContactNo not like '%[8,9]%' 
--13. Find Students who born after date 01-01-1990.
select * from Student where BirthDtae >'1990-01-01'
--14. Update Division to BCX-5 & Semester 5 whose Student Id Is 102.
Update Student set Division='BCX-5',Sem=5 where StuId=102
--15. Change the Student’s Name to Firoz Sherasiya in which Email is Firoz.Me@Gmail.Com & Contact No is 8885999922.
Update Student set Name='Firoz Sherasiya' where Email='Firoz.me@gmail.com' and ContactNo='8885999922'
--16. Add one more Column City Varchar (50) in Student Table.
Alter Table Student add  city varchar(50)

--17. Remove All BCX-3 Division Students.
Delete from Student where Division='BCX-5'
--18. Change Column Name Email to EmailAddress.
sp_rename 'Student.Email','EmailAddress' 
--19. Write an SQL query to clone a new table Student_New from Student table with all data.
select * Into student_new from student
--20. Remove All the Data from Student Table Using Truncate
Truncate table Student
