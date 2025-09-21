create table employees (
  id serial primary key,
  name varchar(50),
  department  varchar(50),
  salary int
)

insert into employees (name, department, salary) values
('Rahim', 'IT', 50000),
('Karim', 'HR', 40000),
('Pabel', 'IT', 60000),
('Jamal', 'Finance', 45000),
('Kamal', 'HR', 35000)


select * from employees


--find the highest salary
select max(salary) from employees


--find which employess gets the highest salary
select * from employees
where salary = (select max(salary) from employees)


--find employess who earn more than the average salary
select * from employees
where salary > (select avg(salary) from employees)



--name of the employee who gets the highest salary in HR department
select * from employees
where salary = (select max(salary) from employees where department = 'HR')






