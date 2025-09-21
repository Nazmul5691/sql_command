create table users (
  id serial primary key,
  username varchar(25) not null
)


create table posts(
  id serial primary key,
  title text not null,
  user_id int references users(id)
)


insert into users (username) values 
('akash'),
('batash'),
('rakib'),
('sumon')



insert into posts (title, user_id) values 
('akash amr akash',3),
('cirodin tmr batash',2),
('rakib is a good boy',3),
('sumon is smart boy',2)






select title, username from posts
join users on posts.user_id = users.id
  
select posts.id, title, username from posts
join users on posts.user_id = users.id
  
select p.id, title, username from posts as p
join users as u on p.user_id = u.id
  
select u.id, title, username from posts as p
join users as u on p.user_id = u.id


select p.id, title, username from posts as p
inner join users as u on p.user_id = u.id


select p.id, title, username from users as u
inner join posts as p on p.user_id = u.id
  

insert into posts (id, title) values 
(5,'akash amr akash')


  -- right join
select * from posts as p
right join users as u on p.user_id = u.id
  
select * from posts as p
right outer join users as u on p.user_id = u.id


--left join
select * from posts as p
left join users as u on p.user_id = u.id
  
select * from posts as p
left outer join users as u on p.user_id = u.id


--full join
select * from posts as p
full join users as u on p.user_id = u.id


-- cross join & natural join
create table employees (
  emp_id int,
  emp_name varchar(50),
  dept_id int
)

create table departments (
  dept_id int,
  dept_name varchar(50)
)


insert into employees values 
(1, 'jhon doe', 101),
(2, 'jack dowson', 102)


insert into departments values
(101, 'Human Resources'),
(102, 'Marketing')


select * from employees
select * from departments


-- cross join
select * from employees
cross join departments

  
-- natural join
select * from employees
natural join departments