create table
  employe (id serial, name varchar(100), age int);

-- rename table name
alter table
  employe
rename to
  employee
  
  -- add a column
alter table
  employee
add column
  email varchar(50);


-- delete a column
alter table
  employee
drop column
  email;


--rename a column
alter table employee
rename column name to user_name;

--rename a column
alter table employee
alter column user_name type varchar(50);

--add constraint
alter table employee
  alter column email set not null;

--drop constraint
alter table employee
  alter column email drop not null;

--set default value
insert into employee (user_name, age) values ('kor', 25);
insert into employee (user_name, age, email) values ('jaamal', 25, 'jamal@gamil.com');
alter table employee
alter column email set default 'test@gmail.com'

-- delete default value
alter table employee
alter column email drop default;


--add constraint (table lavel constraint) -unique, pk, fk
alter table employee
  add constraint unique_employee_email unique(email);

alter table employee
  add constraint pk_employee_id primary key(id);

  --drop constraint (table lavel constraint) -unique, pk, fk
alter table employee
  drop constraint unique_employee_email;