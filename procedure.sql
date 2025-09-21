create procedure delete_emp_byid(emp_id int)
language plpgsql
as
$$
  begin
    delete from employees where id = emp_id;
  end;
$$


call delete_emp_byid(5)





create procedure increase_low_salary(department_name varchar(50))
language plpgsql
as
$$
  declare
     avg_salary int;
  begin
    --first step
    select avg(salary) into avg_salary from employees
    where department = department_name;

    --second step
    update employees set salary = salary  * 1.1
    where department = department_name and salary < avg_salary;    
    
  end;
$$


call increase_low_salary('HR')






