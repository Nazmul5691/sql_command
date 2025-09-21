-- limit-offset-pagination

select * from students

  
select * from students limit 5

-- offset
select * from students limit 5 offset 2


select * from students
where country in ('Bangladesh', 'Nepal', 'India') limit 5 
  
select * from students
where country in ('Bangladesh', 'Nepal', 'India') limit 5 offset 2

  

-- pagination
select * from students limit 5 offset 5 * 0
select * from students limit 5 offset 5 * 1
select * from students limit 5 offset 5 * 2









