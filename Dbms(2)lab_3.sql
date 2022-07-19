use Person_Info_358


--1. Find all persons with their department name & code. 
Select PersonName,DepartmentCode,DepartmentName from Person inner join Department on Person.DepartmentId=Department.DepartmentId
--2. Give department wise maximum & minimum salary with department name.
Select Max(Salary) as Max_Salary,Min(Salary) as Min_Salary,DepartmentName 

		from Person inner join Department 
		on Person.DepartmentId=Department.DepartmentId
		group by DepartmentName
--3. Find all departments whose total salary is exceeding 100000.
Select DepartmentName
 from Person inner join Department 
 on Person.DepartmentId=Department.DepartmentId
  
 
 group by DepartmentName
  Having sum(Salary)>100000
 

--4. Retrieve person name, salary & department name who belongs to Jamnagar city.
Select PersonName,Salary,DepartmentName 
from Person inner join Department 
on  Person.DepartmentId=Department.DepartmentId
where city='Jamnagar'
 

--5. Find all persons who does not belongs to any department.

Select PersonName 
from Person Left outer join Department 
on  Person.DepartmentId=Department.DepartmentId
where Person.DepartmentId is null
--6. Find department wise person counts
Select count(PersonId) as TotalPerson,Department.DepartmentName
from Person inner join Department 
on  Person.DepartmentId=Department.DepartmentId
group by DepartmentName
--7. Find average salary of person who belongs to Ahmedabad city.
Select Avg(Salary) as Average_Salary
from Person inner  join Department 
on  Person.DepartmentId=Department.DepartmentId
where city='Ahmedabad'
--8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly.
--(In single column)
Select  PersonName + ' earns ' + cast(Salary as varchar) +' from '+DepartmentName+' Department Monthly' 
from Person inner join Department 
on  Person.DepartmentId=Department.DepartmentId

--9. List all departments who have no persons.
select DepartmentName from Person inner join Department
on  Person.DepartmentId=Department.DepartmentId
group by DepartmentName
Having   count(PersonId)=0

--10. Find city & department wise total, average & maximum salaries.
Select City,DepartmentName,Avg(Salary) as Avg_Salary,Max(Salary) as Max_Salary 
from Person inner join Department
on  Person.DepartmentId=Department.DepartmentId
group by DepartmentName,City

--11. Display Unique city names.
select distinct City 
from Person inner join Department
on  Person.DepartmentId=Department.DepartmentId
group by City
--12. List out department names in which more than two persons.
select DepartmentName from Person inner join Department
on  Person.DepartmentId=Department.DepartmentId
group by DepartmentName
Having   count(PersonId)>2

--13. Combine person name’s first three characters with city name’s last three characters in single column.
Select substring(PersonName,1,3)+substring(City,1,3)
 from Person inner join Department
on  Person.DepartmentId=Department.DepartmentId
--14. Give 10% increment in Computer department employee’s salary.
select Salary=Salary+(Salary*0.1) as IncrementedSalary from  Person inner join Department
on  Person.DepartmentId=Department.DepartmentId 
where DepartmentName='computer' 
--15. Display all the person name’s who’s joining dates difference with current date is more than 365 days.
select PersonName from  Person inner join Department
on  Person.DepartmentId=Department.DepartmentId 
where datediff(DAY,JoiningDate,getdate())>365