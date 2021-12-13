create database payroll_services;
use payroll_services;

create table employee_payroll(id int identity (1,1) primary key, Name varchar(20), Salary float, StartDate date);
select * from employee_payroll