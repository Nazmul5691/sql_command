--scaller functon
-- upper, lower, concat, length
select * from students;

select upper(first_name), first_name, age, country from students
select upper(first_name) as first_name_in_upper, first_name, age, country from students
  
select concat(first_name,' ', last_name) as "Full Name", first_name, age, country from students
select length(first_name), first_name, age, country from students
  
select length(first_name) as first_name_length, first_name, age, country from students order by first_name_length desc
select length(first_name) as first_name_length, first_name, age, country from students order by first_name_length asc


-- aggregate function
-- avg, max, min, sum, count
select avg(age) from students;

select max(age) from students;

select min(age) from students;

select sum(age) from students;

select sum(age) as sum_of_age from students;

select count(age) from students;

select count(*) from students;






