CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) not null,
  last_name varchar(50) not null,
  age int,
  grade char(2),
  course varchar(50),
  email varchar(100) unique,
  dob date,
  blood_group varchar(5),
  country varchar(50)
)


-- insert data 
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Arif', 'Hossain', 20, 'A+', 'Computer Science', 'arif.hossain@example.com', '2005-03-12', 'O+', 'Bangladesh'),
('Mehedi', 'Hasan', 22, 'B', 'Mathematics', 'mehedi.hasan@example.com', '2003-07-21', 'A-', 'Bangladesh'),
('Nusrat', 'Jahan', 19, 'A', 'Physics', 'nusrat.jahan@example.com', '2006-11-03', 'B+', 'India'),
('Farhana', 'Akter', 21, 'A-', 'Biology', 'farhana.akter@example.com', '2004-05-18', 'O-', 'Pakistan'),
('Samiul', 'Islam', 23, 'C+', 'Chemistry', 'samiul.islam@example.com', '2002-09-15', 'AB+', 'Nepal'),
('Tania', 'Rahman', 20, 'B+', 'English Literature', 'tania.rahman@example.com', '2005-02-27', 'A+', 'Bangladesh'),
('Rashed', 'Karim', 24, 'B-', 'Economics', 'rashed.karim@example.com', '2001-08-30', 'B-', 'USA'),
('Sharmin', 'Sultana', 22, 'A+', 'History', 'sharmin.sultana@example.com', '2003-01-11', 'O+', 'Bangladesh'),
('Imran', 'Kabir', 19, 'A', 'Computer Science', 'imran.kabir@example.com', '2006-04-09', 'AB-', 'India'),
('Jannat', 'Ferdous', 21, 'C', 'Political Science', 'jannat.ferdous@example.com', '2004-10-05', 'B+', 'Bangladesh'),
('Rafi', 'Chowdhury', 23, 'B+', 'Business', 'rafi.chowdhury@example.com', '2002-06-14', 'A-', 'Canada'),
('Sadia', 'Mim', 20, 'A-', 'Law', 'sadia.mim@example.com', '2005-12-01', 'O+', 'Bangladesh'),
('Rakib', 'Hasan', 22, 'B', 'Mechanical Engineering', 'rakib.hasan@example.com', '2003-03-07', 'B+', 'Bangladesh'),
('Fahim', 'Ahmed', 19, 'C+', 'Electrical Engineering', 'fahim.ahmed@example.com', '2006-07-23', 'A+', 'India'),
('Sumaiya', 'Akter', 21, 'A', 'Architecture', 'sumaiya.akter@example.com', '2004-09-19', 'O-', 'Pakistan'),
('Tahsin', 'Mahmud', 23, 'B-', 'Civil Engineering', 'tahsin.mahmud@example.com', '2002-11-26', 'AB+', 'Bangladesh'),
('Shamim', 'Reza', 20, 'A+', 'Philosophy', 'shamim.reza@example.com', '2005-05-17', 'O+', 'Nepal'),
('Maliha', 'Khan', 22, 'B+', 'Psychology', 'maliha.khan@example.com', '2003-08-12', 'B-', 'Bangladesh'),
('Asif', 'Rahman', 24, 'C', 'Sociology', 'asif.rahman@example.com', '2001-01-29', 'A+', 'USA'),
('Priya', 'Das', 21, 'A-', 'Fine Arts', 'priya.das@example.com', '2004-04-04', 'O-', 'India');

INSERT INTO students (first_name, last_name, age, grade, course,  dob, blood_group, country) VALUES
('Arif2', 'Hossain', 20, 'A+', 'Computer Science', '2005-03-12', 'O+', 'Bangladesh')


--using select
select first_name from students;
select first_name, age from students;
select * from students;

--column alias
select first_name as "First Name" from students;
select first_name as "First Name", age as "Student Age" from students;
select first_name as "First Name", age as user_age from students;


--sorting
select first_name, age, blood_group, country from students;
select first_name, age, blood_group, country from students order by age desc;
select first_name, age, blood_group, country from students order by age asc;
select student_id, first_name, age, blood_group, country from students order by student_id desc;
select student_id, first_name, age, blood_group, country from students order by student_id asc;



--distinct
select country from students;
select distinct country from students;
select distinct course from students;


-- filtering
-- = operator
-- select student from  the Nepal
select * from students
where country = 'Nepal';

select first_name, age, course, grade, country from students
where country = 'Nepal';


-- select student with A+ in physics
select first_name, age, course, grade, country from students
where course = 'Physics';
  
select first_name, age, course, grade, country from students
where grade = 'A+';


-- select student with specific blood_group (A+)
select * from students
where blood_group = 'A+';


-- OR operator
-- select students from nepal or bangladesh
select * from students
where country = 'Nepal' or country = 'Bangladesh'


--select students with a grade of 'A' or 'B' in mathemetics or History
select * from students
where (grade = 'A' or grade = 'B')  and (course = 'Mathematics' or course = 'History')


-- and operator
select * from students
where country = 'Nepal' and age = '20'


--select students from  the nepal or bangladesh and the age is 20
select * from students
where (country = 'Nepal' or country = 'Bangladesh')  and age = 20


--comparison operator
-- select students older then 20
select * from students
where age > 20
  
select * from students
where age <= 20
  
select first_name, country from students
where country != 'Nepal'
  
select first_name, country from students
where country <> 'Nepal'
  
select first_name, age from students
where age between 20 and 22


select * from students
where country = 'Nepal' or country = 'Bangladesh' or country = 'India'
  
select * from students
where country in ('Bangladesh', 'Nepal', 'India')


--select student whose first_name starts with 'A'
select * from students
where first_name like 'A%'
  
select * from students
where first_name like '%f'
  
select * from students
where first_name like '%a_'
  
select * from students
where first_name like 'A___'
  
select * from students
where first_name like '%A'
  
select * from students
where email ilike 'A%'


-- not
select first_name, country from students
where not country = 'Nepal'



