
select country from students
group by country
  
select country, avg(age) from students
group by country


-- count students by country
select country, count(*) from students
group by country


-- count students by grade
select grade, count(*) from students
group by grade



-- courses with more than 4 students
select course, count(*) from students group by course having count(*) > 1


-- countries where average students age is grater than 20
select country, avg(age) from students group by country having avg(age) > 22




