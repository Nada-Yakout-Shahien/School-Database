select d.Dname,d.Dnum,e.Fname,e.Lname,SSN
from Departments d inner join Employee e
on d.Dnum=e.Dno;

Select d.Dname,p.pname
From departments d inner join Project p
On d.Dnum=p.Dnum;


select d.*, e.Fname + ' '+e.Lname as 'Employee Name'
FROM Dependent d, Employee e 
where e.SSN= d.ESSN

Select pname,pnumber,plocation,City
 from project 
 where city in('Alex','Cairo')

Select pname, pnumber, plocation, city,Dnum
From project
Where pname Like'a%';

Select Fname,Lname,salary,Dno
From Employee 
Where Dno=30 and salary between 1000 and 2000;

select  e.Fname + ' '+e.Lname as 'Employee Name', d.Dnum ,w.Hours ,p.pname
from Employee e,Departments d,Works_for w, Project p
where d.Dnum=10 and pname='Al Rabwah' and w.Hours>=10;

 select emp.Fname,emp.Lname
 from Employee emp join Employee sup 
 on emp.Superssn=sup.SSN 
 where sup.Fname='kamel' and sup.Lname='Mohamed';
 
 select e.Fname + ' '+e.Lname as 'Employee Name',p.pname
 from Employee e, Works_for w , Project p 
 where e.SSN=w.ESSn and p.pnumber=w.pno
 order by p.Pname;

 select p.pnumber, d.Dname, e.Lname,e.Address, e.Bdate
 FROM Project p, Departments d, Employee e
 where p.Dnum=d.Dnum and e.SSN=d.MGRSSN and p.City='Cairo';

SELECT * FROM Employee E
WHERE (SSN IN (SELECT Superssn from Employee));

select*from Employee left outer join Dependent
on SSN=ESSN;

insert into Employee 
values('yossef','Mohammed',102672,'1-10-1977','Cairo','F',1300,112233,30);

insert into Employee(Fname,Lname,SSN,BDATE,Address,Sex,Dno) 
values('Rasha','Ahmed',102660,'11-14-1980','Alex','F',30);

insert into Departments
values('DEPT IT',100,112233,'1-11-2006')
select* from Employee

select* from Departments