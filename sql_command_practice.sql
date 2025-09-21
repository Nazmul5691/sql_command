create table employees (
  employee_id serial primary key,
  employee_name varchar(50),
  department_id int references departments (department_id),
  salary decimal(10,2),
  hire_date date
);


create table departments (
  department_id serial primary key,
  department_name varchar(50)
);


INSERT INTO departments (department_name) VALUES
('HR'),
('Marketing'),
('Finance'),
('IT'),
('Operations'),
('Sales'),
('Customer Support'),
('Research and Development'),
('Administration'),
('Procurement');


INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('Alice Johnson', 1, 45000.00, '2023-02-15'),
('Brian Smith', 2, 52000.00, '2022-11-10'),
('Carol Davis', 3, 48000.00, '2023-01-05'),
('David Brown', 4, 60000.00, '2021-09-20'),
('Emily Wilson', 5, 47000.00, '2023-03-18'),
('Frank Harris', 6, 55000.00, '2022-07-25'),
('Grace Lee', 7, 43000.00, '2023-04-12'),
('Henry Clark', 8, 65000.00, '2021-12-01'),
('Ivy Martinez', 9, 40000.00, '2023-05-10'),
('Jack Thompson', 10, 50000.00, '2022-08-08'),

('Karen Young', 1, 46000.00, '2023-06-14'),
('Liam Scott', 2, 54000.00, '2022-05-30'),
('Mia Green', 3, 49000.00, '2023-07-02'),
('Noah Adams', 4, 61000.00, '2021-10-10'),
('Olivia Baker', 5, 47500.00, '2023-02-22'),
('Paul Roberts', 6, 56000.00, '2022-09-15'),
('Quinn Evans', 7, 44000.00, '2023-08-03'),
('Ruby Carter', 8, 65500.00, '2021-11-28'),
('Samuel Turner', 9, 40500.00, '2023-01-18'),
('Tina Phillips', 10, 50500.00, '2022-12-05'),

('Uma Howard', 1, 46500.00, '2023-03-11'),
('Victor Hughes', 2, 54500.00, '2022-10-25'),
('Wendy Foster', 3, 49500.00, '2023-04-06'),
('Xavier Diaz', 4, 61500.00, '2021-07-14'),
('Yara Simmons', 5, 48000.00, '2023-05-30'),
('Zachary Bell', 6, 57000.00, '2022-06-19'),
('Amber Cooper', 7, 44500.00, '2023-09-01'),
('Blake Parker', 8, 66000.00, '2021-08-22'),
('Chloe Rivera', 9, 41000.00, '2023-02-27'),
('Dylan Morgan', 10, 51000.00, '2022-11-11');




--inner join to retrive employee and department information
select * from employees
inner join departments on employees.department_id = departments.department_id

  
select * from employees as e
inner join departments as d on e.department_id = d.department_id

  
select * from employees 
inner join departments using(department_id)


--show department name with avgerage salary
select department_name, round(avg(salary)) from employees
inner join departments using(department_id)
group by department_name



--count employess in each departments
select department_name, count(*) from employees
inner join departments using(department_id)
group by department_name


--find the department name with highest average salary
select department_name , round(avg(salary)) as avg_salary  from employees
inner join departments using(department_id)
group by department_name 
order by avg_salary desc
limit 1




--count employess hired each year
select extract(year from '2025-09-11'::date)
select extract(month from '2025-09-11'::date)
select extract(day from '2025-09-11'::date)


select extract(year from hire_date) as hired_year, count(*) from employees
group by hired_year

