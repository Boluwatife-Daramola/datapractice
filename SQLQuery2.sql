--Creating the database for ThinkEmploymentStaffRecords
create database ThinkEmploymentStaffRecords
use ThinkEmploymentStaffRecords

CREATE TABLE Employees (
	ID INT PRIMARY KEY,
	First_name VARCHAR (120),
	Last_name VARCHAR (120),
	Department VARCHAR (120), 
	Salary DECIMAL (10,2)
);


INSERT INTO employees (id, first_name, last_name, department, salary) 
VALUES 
(1, 'Paul', 'Garrix', 'Corporate', 3547.25),
(2, 'Astrid', 'Fox', 'Private Individuals', 2845.56),
(3, 'Matthias', 'Johnson', 'Private Individuals', 3009.41),
(4, 'Lucy', 'Patterson', 'Private Individuals', 3547.25),
(5, 'Tom', 'Page', 'Corporate', 5974.41),
(6, 'Claudia', 'Conte', 'Corporate', 4714.12),
(7, 'Walter', 'Deer', 'Private Individuals', 3547.25),
(8, 'Stephanie', 'Marx', 'Corporate', 2894.51),
(9, 'Luca', 'Pavarotti', 'Private Individuals', 4123.45),
(10, 'Victoria', 'Pollock', 'Corporate', 4789.53),
(11, 'John', 'Doe', 'Corporate', 6000.00),
(12, 'Jane', 'Smith', 'Private Individuals', 4500.75),
(13, 'Michael', 'Johnson', 'Corporate', 5200.50),
(14, 'Emily', 'Williams', 'Private Individuals', 3800.25),
(15, 'David', 'Brown', 'Corporate', 4800.75),
(16, 'Sophia', 'Miller', 'Private Individuals', 3200.00),
(17, 'Daniel', 'Clark', 'Private Individuals', 4100.50),
(18, 'Olivia', 'Anderson', 'Corporate', 5500.25),
(19, 'Christopher', 'Moore', 'Private Individuals', 3600.00),
(20, 'Emma', 'Taylor', 'Corporate', 5100.75),
(21, 'Liam', 'Hill', 'Corporate', 4300.50),
(22, 'Isabella', 'Ward', 'Private Individuals', 5900.25),
(23, 'William', 'Carter', 'Corporate', 4900.75),
(24, 'Sophie', 'Jones', 'Private Individuals', 3200.00),
(25, 'Ethan', 'Hall', 'Corporate', 4100.50),
(26, 'Mia', 'Davis', 'Private Individuals', 3600.00),
(27, 'Aiden', 'Baker', 'Corporate', 5100.75),
(28, 'Ella', 'Cooper', 'Private Individuals', 4300.50),
(29, 'Carter', 'Perry', 'Corporate', 5900.25),
(30, 'Mila', 'Evans', 'Private Individuals', 4900.75),
(31, 'James', 'Lopez', 'Corporate', 3200.00),
(32, 'Ava', 'Rivera', 'Private Individuals', 4100.50),
(33, 'Liam', 'Bryant', 'Corporate', 3600.00),
(34, 'Olivia', 'Hudson', 'Private Individuals', 5100.75),
(35, 'Noah', 'Watson', 'Corporate', 4300.50),
(36, 'Sophia', 'Fisher', 'Private Individuals', 5900.25),
(37, 'Ethan', 'Bell', 'Corporate', 4900.75),
(38, 'Ava', 'Fletcher', 'Private Individuals', 3200.00),
(39, 'Lucas', 'Murray', 'Corporate', 4100.50),
(40, 'Chloe', 'Simmons', 'Private Individuals', 3600.00),
(41, 'Mason', 'Perkins', 'Corporate', 5100.75),
(42, 'Harper', 'Harrison', 'Private Individuals', 4300.50),
(43, 'Aiden', 'Andrews', 'Corporate', 5900.25),
(44, 'Ella', 'Knight', 'Private Individuals', 4900.75),
(45, 'Caleb', 'Fox', 'Corporate', 3200.00),
(46, 'Aria', 'Gibson', 'Private Individuals', 4100.50),
(47, 'Jackson', 'Reed', 'Corporate', 3600.00),
(48, 'Scarlett', 'Cox', 'Private Individuals', 5100.75),
(49, 'Logan', 'Hunt', 'Corporate', 4300.50),
(50, 'Lily', 'Grant', 'Private Individuals', 5900.25);



select * from Employees


CREATE TABLE Quarterly_sales (
	Employee_id INT REFERENCES employees(id),
	Q1_2022 DECIMAL (10,2),
	Q2_2022 DECIMAL (10,2),
	Q3_2022 DECIMAL (10,2),
	Q4_2022 DECIMAL (10,2)
);



INSERT INTO quarterly_sales (employee_id, Q1_2022, Q2_2022, Q3_2022, Q4_2022) 
VALUES 
(8, 3471.41, 14789.25, 3478.34, 1254.23),
(4, 5417.81, 12846.23, 8741.54, 3589.99),
(10, 1547.52, 1269.66, 1478.65, 2474.33),
(1, 8715.55, 8465.65, 24747.82, 3514.36),
(3, 12774.51, 24784.31, 12223.34, 8451.51),
(2, 4989.23, 5103.22, 4897.98, 5322.05),
(7, 18415.66, 15279.37, 14634.44, 14445.12),
(6, 2498.63, 8741.45, 3997.65, 2497.21),
(5, 6349.74, 7555.55, 6944.35, 7788.01),
(9, 4485.36, 4101.50, 8787.45, 7648.90),
(11, 3000.00, 4000.00, 3500.00, 4200.00),
(12, 4500.75, 5200.50, 3800.25, 4800.75),
(13, 5200.50, 3800.25, 4800.75, 6000.00),
(14, 3800.25, 4800.75, 6000.00, 4500.75),
(15, 4800.75, 6000.00, 4500.75, 5200.50),
(16, 6000.00, 4500.75, 5200.50, 3800.25),
(17, 5200.50, 3800.25, 4800.75, 6000.00),
(18, 4800.75, 6000.00, 4500.75, 5200.50),
(19, 6000.00, 4500.75, 5200.50, 3800.25),
(20, 5200.50, 3800.25, 4800.75, 6000.00),
(21, 4800.75, 6000.00, 4500.75, 5200.50),
(22, 6000.00, 4500.75, 5200.50, 3800.25),
(23, 5200.50, 3800.25, 4800.75, 6000.00),
(24, 4800.75, 6000.00, 4500.75, 5200.50),
(25, 6000.00, 4500.75, 5200.50, 3800.25),
(26, 5200.50, 3800.25, 4800.75, 6000.00),
(27, 4800.75, 6000.00, 4500.75, 5200.50),
(28, 6000.00, 4500.75, 5200.50, 3800.25),
(29, 5200.50, 3800.25, 4800.75, 6000.00),
(30, 4800.75, 6000.00, 4500.75, 5200.50),
(31, 6000.00, 4500.75, 5200.50, 3800.25),
(32, 5200.50, 3800.25, 4800.75, 6000.00),
(33, 4800.75, 6000.00, 4500.75, 5200.50),
(34, 6000.00, 4500.75, 5200.50, 3800.25),
(35, 5200.50, 3800.25, 4800.75, 6000.00),
(36, 4800.75, 6000.00, 4500.75, 5200.50),
(37, 6000.00, 4500.75, 5200.50, 3800.25),
(38, 5200.50, 3800.25, 4800.75, 6000.00),
(39, 4800.75, 6000.00, 4500.75, 5200.50),
(40, 6000.00, 4500.75, 5200.50, 3800.25),
(41, 5200.50, 3800.25, 4800.75, 6000.00),
(42, 4800.75, 6000.00, 4500.75, 5200.50),
(43, 6000.00, 4500.75, 5200.50, 3800.25),
(44, 5200.50, 3800.25, 4800.75, 6000.00),
(45, 4800.75, 6000.00, 4500.75, 5200.50),
(46, 6000.00, 4500.75, 5200.50, 3800.25),
(47, 5200.50, 3800.25, 4800.75, 6000.00),
(48, 4800.75, 6000.00, 4500.75, 5200.50),
(49, 6000.00, 4500.75, 5200.50, 3800.25),
(50, 5200.50, 3800.25, 4800.75, 6000.00);


select * from quarterly_sales

--return all columns
select * from Employees

--return specific columns
select First_name 
from Employees

--return more than one column
select First_name, Last_name, Salary
from Employees


--return columns based on condition using the where clause
select *
from Employees
where First_name = 'Paul'

select *
from Employees
where Department = 'Corporate'

select *
from Employees
where First_name = 'Paul' or First_name = 'James'

select *
from Employees
where Department = 'Corporate' AND Salary > 3500

select *
from Employees
where Department = 'Corporate' AND Salary > 0

select *
from Employees
where First_name like 'L%'

select *
from Employees
where First_name like '%e'

select *
from Employees
where First_name like '%ia%'

select *
from Employees
where First_name like '%i%'


--return more than one column and based on conditions
select *
from Employees
where First_name like '%' AND Last_name like '%' AND Salary > 3500


--return more than one column
select First_name, Last_name, Salary
from Employees
where Salary > 3500

--return more than one column
select First_name, Department, Salary
from Employees
where First_name like 'P%' AND Department = 'Corporate' AND Salary > 3500

--return more than one column
select *
from Employees
where First_name like 'P%' AND Department = 'Corporate' AND Salary > 3500


--return column based on conditions
select *
from Employees
where First_name like '%ia%'
order by First_name desc

select *
from Employees
where First_name like '%ia%'
order by Salary desc

select *
from Employees
where First_name like '%ia%'
order by Salary asc


--return top 5 earning employees with 'ia' in firstname
select top (5) *
from Employees
where First_name like '%ia%'
order by Salary desc

select top (5) *
from Employees
where First_name like '%ia%'
order by Salary

select top (5) *
from Employees
where First_name like '%ia%'
order by Department, Salary desc

--order department first before salary
select *
from Employees
where First_name like '%ia%'
order by Department, Salary desc

--return records of employees who earn between 3500 and 5000
select * from Employees
where Salary > 3500 AND Salary < 5000

--return records of employees who earn between 3500 and 5000
select * 
from Employees
where Salary BETWEEN 3500 AND 5000





select * 
from Quarterly_Sales

--Return the half year total of the employees sales (with or without column name)
select Employee_id,
Q1_2022 + Q2_2022 
from Quarterly_sales

select Employee_id,
Q1_2022 + Q2_2022 as Half_year_2022
from Quarterly_sales



select * from Employees

--aggregration function (any non agggre col appear in select must also appear in the groupby)
select department, first_name,
sum(salary) as Total_Salary_by_department
from Employees
group by Department, First_name

select department,
sum(salary) as Total_Salary_by_department
from Employees
group by Department

select department,
avg(salary) as Average_Salary_by_department
from Employees
group by Department


--this return the department with null values
select
department,
count (*) as Employees_by_department
from Employees
group by Department

--this will not return the department with null values
select
department,
count (Department) as Employees_by_department
from Employees
group by Department

select
department,
max (Salary) as Employees_by_department
from Employees
group by Department

select
department,
min (Salary) as Employees_by_department
from Employees
group by Department


--aggregate with the where clause (condition)
select
department,
SUM (Salary) as Toal_Salary_by_department
from Employees
where salary >= 4500
group by Department


--aggreagete employee that has 'e' within their names
select
department,
SUM (Salary) as Toal_Salary_by_department
from Employees
where First_name like'%e%'
group by Department


--Return the count of all employees who earn between 3000 and 5000 and whose lastname ends with the letter a
select Department,
count (Salary) as Employee_by_Department ---including header 'deparrtment' is will ignore null values
from Employees
where Salary > 3000 AND Salary < 5000 AND Last_name like'%a'
group by Department


select Department,
count (*) as Employee_by_Department
from employees
where Last_name like'%a' AND Salary > 3000 AND Salary < 5000
group by Department

select Department,
count (*) as Employee_by_Department
from employees
where First_name like'%a' AND Salary > 3000 AND Salary < 5000
group by Department


select * from Employees

select * from Quarterly_sales

--Joins

select
E.ID,
E.First_name,
E.Last_name,
Q.Q1_2022 + Q.Q2_2022 + Q.Q3_2022 + Q.Q4_2022 as TotalSales
from Employees E
join Quarterly_sales Q
on E.ID = Q.Employee_id

select
E.ID,
Q.Employee_id,
E.First_name,
E.Last_name,
Q.Q1_2022 + Q.Q2_2022 + Q.Q3_2022 + Q.Q4_2022 as TotalSales
from Employees E
join Quarterly_sales Q
on E.ID = Q.Employee_id



--nested/embedded query (query inside another query)
select AVG (salary)
from Employees

select * from Employees where Salary > 4388

select * from Employees where Salary > (select AVG (salary)
from Employees)

select first_name, last_name
from Employees


--picking from 2 tables using the join statement
select
E.ID,
Q.Employee_id,
E.First_name,
E.Last_name
from Employees E
join Quarterly_sales Q
on E.ID = Q.Employee_id

select
ID,
First_name,
Last_name
from Employees 
where ID in 
(select employee_id
from Quarterly_sales 
where Employee_id > 45)


