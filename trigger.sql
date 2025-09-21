create function delete_emp_id (emp_id int)
returns void
language sql 
as 
$$
  delete from employees where id = emp_id
$$



create table employee_logs (
  id serial primary key,
  emp_name varchar(100),
  action varchar(25),
  action_time timestamp default now()
)


create trigger save_employee_delete_logs
after delete
on employees
for each row
execute function log_employee_deletion()



create function log_employee_deletion()
returns trigger
language plpgsql
as
$$
  begin
   insert into employee_logs (emp_name, action) values (old.name, 'delete');
   return old;
  end;
$$



select delete_emp_id(5)

