--to create tables
create table employeedemographics
(employeeid int,
firstname varchar (50),
lastname varchar (50),
age int,
gender  varchar (50)
)


create table employeesalary
(employeeid int,
jobtitle varchar (50),
salary int
)

--insert values into tables
insert into employeedemographics values
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwright', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Micheal', 'Scott', 35, 'Female'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kelvin', 'Malone', 31, 'Male')


insert into employeesalary values
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)


--SELECT STATEMENT
--retrieve all info from table
select *
from employeedemographics

--retrieve firstname from table
select firstname
from employeedemographics

--retrieve first and last name from table
select firstname, lastname
from employeedemographics

--retrieve top 5 from table
select top 5 *
from employeedemographics

--retrieve distinct/unique from table
select distinct (employeeid)
from employeedemographics

--retrieve distinct/unique from table
select distinct (gender)
from employeedemographics

--retrieve no of lastnames from table
select count (lastname)
from employeedemographics

--retrieve no of lastnames from table and called it LastNameCount 
select count (lastname) as LastNameCount
from employeedemographics

--retrieve all info from table
select *
from employeesalary

--retrieve maximun salary from table
select MAX(salary)
from employeesalary

--retrieve minimum salary from table
select Min(salary)
from employeesalary

--retrieve average salary from table
select avg(salary)
from employeesalary

--retrieve all info from table from the master database
select *
from  [SQL Tutorial].dbo.employeesalary


--WHERE STATEMENT
select *
from  employeedemographics

--retrieve all info from table where firstname is Jim
select *
from  employeedemographics
where firstname = 'Jim'

--retrieve all info from table where firstname is not equal to Jim
select *
from  employeedemographics
where firstname <> 'Jim'

--retrieve all info from table where age > 30
select *
from  employeedemographics
where age > 30

--retrieve all info from table where age > or = 30
select *
from  employeedemographics
where age >= 30

--retrieve all info from table where age < 32
select *
from  employeedemographics
where age < 32

--retrieve all info from table where age < or = 32
select *
from  employeedemographics
where age <= 32

--retrieve all info from table where age < or = 32 and gender is male
select *
from  employeedemographics
where age <= 32 and gender = 'Male'

--retrieve all info from table where age < or = 32 or gender is make
--or gives more while and gives less
select *
from  employeedemographics
where age <= 32 or gender = 'Male'

--retrieve all info from table where lastname starts with s
select *
from  employeedemographics
where lastname like 's%'

--retrieve all info from table where lastname ends with n
select *
from  employeedemographics
where lastname like '%n'

--retrieve all info from table where lastname has s in between
select *
from  employeedemographics
where lastname like '%s%'

--retrieve all info from table where lastname starts with s and has o in between
select *
from  employeedemographics
where lastname like 's%o%'

--retrieve all info from table where lastname starts with s and has o in between first and then t in between 
select *
from  employeedemographics
where lastname like 's%o%t%'

--retrieve all info from table where there is an empty space for lastname
select *
from  employeedemographics
where lastname is null

--retrieve all info from table where there is a value for lastname
select *
from  employeedemographics
where lastname is not null

--retrieve all info from table where firstnames are Jim, Pam and Toby
select *
from  employeedemographics
where firstname in ('Jim', 'Pam', 'Toby')

--retrieve all info from table where firstnames are Jim and Pam
select *
from  employeedemographics
where firstname in ('Jim', 'Pam')


--GROUP BY and ORDER BY
select *
from  employeedemographics

select gender
from  employeedemographics

select gender, count (gender)
from  employeedemographics
group by gender

select gender, count (gender) as gendercount
from  employeedemographics
group by gender

select distinct (gender)
from employeedemographics

select gender, age, count (gender)
from  employeedemographics
group by gender, age

select gender, count (gender)
from  employeedemographics
where age > 31
group by gender

select gender, count (gender) as gendercount
from  employeedemographics
where age > 31
group by gender
order by gendercount --asc, desc 

select gender, count (gender) as gendercount
from  employeedemographics
where age > 31
group by gender
order by gender desc 

select *
from  employeedemographics
order by age 

select *
from  employeedemographics
order by age desc

select *
from  employeedemographics
order by age, gender

select *
from  employeedemographics
order by age, gender desc

select *
from  employeedemographics
order by age desc, gender desc

select *
from  employeedemographics
order by 3, 4

select *
from  employeedemographics
order by 2

select *
from  employeedemographics
order by 2 desc




--INNER JOINS, fULL/ LEFT/ RIGHT OUTER JOINS
select *
from [SQL Tutorial].dbo.employeedemographics

select *
from [SQL Tutorial].dbo.employeesalary

--A join is a way to combine multiple tables into a single output
--Join by default means Inner Join 

select *
from employeedemographics
inner join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid

select *
from employeedemographics
full outer join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid

select *
from employeedemographics
left outer join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid

select *
from employeedemographics
right outer join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid