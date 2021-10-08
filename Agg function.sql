create database company;

use company; 

create table employee(emppId varchar(10), empName varchar(20), 
salary int(10),  address varchar(10), deptNo varchar(10));

insert into employee(emppId,empName,salary,address,deptno)
VALUES('1001','Tokyo',5000,'home1','D001'),
('1002','Nairobi',10000,'home2','D002'),
('1003','Tokyo',60000,'home3','D001'),
('1004','Helsinki',80000,'home4','D002'),
('1005','Auturo',20000,'home5','D003');
select * from employee;
select count(*) from employee;

select count(*),deptno
from employee
group by deptno;

select count(*),address
from employee
group by address;

select sum(salary) from employee;

select sum(salary),deptno
from employee
group by deptno;

select sum(salary),deptno
from employee
group by deptno
having sum(salary) > 20000 ;

select min(salary) from employee;
select max(salary) from employee;

select min(salary), deptno 
from employee
group by deptno;

select min(salary), deptno, emppid, empname 
from employee
group by deptno;

update employee set empname = 'Tokyo' where emppid = '1003';
commit;
select * from employee;

drop table employee;

select min(salary), deptno, emppid, empname 
from employee
group by deptno, empname
having min(salary) < 20000;