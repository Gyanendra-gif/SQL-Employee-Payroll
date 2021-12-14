create database Example;
use Example;


create table Student
(id int identity (1,1) primary key, Name varchar(20));
create table Employee
(id int identity (1,1) primary key, Name varchar(20), EmpId int foreign key references Student (id));

