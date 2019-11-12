create table employees(
emp_no int primary key,
birth_date date not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
gender varchar(10) not null,
hire_date date not null
);

select * from employees;

create table titles (
emp_no int not null,
title varchar(30) not null,
from_date date not null,
to_date date not null
);

select * from titles;

create table salaries(
emp_no int not null,
salary int not null,
from_date date not null,
to_date date not null
);

select * from salaries;

create table departments(
dept_no varchar(10) primary key,
dept_name varchar(30) not null
);

select * from departments;

create table dept_emp(
emp_no int not null,
dept_no varchar(10) not null,
from_date date not null,
to_date date not null
);

select * from dept_emp;

create table dept_manager(
dept_no varchar(10) not null,
emp_no int not null,
from_date date not null,
to_date date not null
);


select * from dept_manager;
