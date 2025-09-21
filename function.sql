-- select count(*) from employees


create function emp_count()
returns int
language sql
as 
$$
 select count(*) from employees 
$$

select emp_count()


create function emp_countsss()
returns int
language plpgsql
as 
$$
 begin
  return (select count(*) from employees);
 end;
$$



select emp_countsss()




-- delete from employees where id = 20


create function delete_emp_id(emp_id int)
returns void
language sql
as
$$
  delete from employees where id = emp_id
$$


select delete_emp_id(5)




