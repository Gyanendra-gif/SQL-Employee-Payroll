create database payroll_services;
use payroll_services;

create table employee_payroll(id int identity (1,1) primary key, Name varchar(20), Salary float, StartDate date);

exec sp_help employee_payroll

insert into employee_payroll values( 'Gyanendra', 80000.00, '2021-12-13')
insert into employee_payroll values( 'Mohan', 70000.00, '2021-12-14')
insert into employee_payroll values( 'Sohan', 60000.00, '2021-12-16')
insert into employee_payroll values( 'Rohan', 50000.00, '2021-12-18')

select * from employee_payroll

select Salary from employee_payroll WHERE name  = 'Gyanendra'
select * from employee_payroll
where StartDate Between CAST ('2021-12-13' AS Date) and GETDATE();

Alter table employee_payroll Add gender char(1);
UPDATE employee_payroll Set gender ='M' where name = 'Gyanendra' ;
UPDATE employee_payroll Set gender ='M' where name = 'Mohan' ;
UPDATE employee_payroll Set gender ='M' where name = 'Sarika' ;
UPDATE employee_payroll Set gender ='M' where name = 'Rohan' ;

select SUM(Salary) from employee_payroll where gender = 'M' Group by gender
select AVG(Salary) from employee_payroll where gender = 'M' Group by gender
select MIN(Salary) from employee_payroll where gender = 'M' Group by gender
select MAX(Salary) from employee_payroll where gender = 'M' Group by gender
select SUM(Salary) from employee_payroll where gender = 'M' Group by gender

Alter table employee_payroll Add phone bigint;
Alter table employee_payroll Add Address varchar(200) not null default 'Rewa';
Alter table employee_Payroll Add Department varchar(200) not null default'HR';

Alter table employee_Payroll Add Deduction bigint, Taxable_pay float, IncomeTax_pay float, Net_Pay float;

