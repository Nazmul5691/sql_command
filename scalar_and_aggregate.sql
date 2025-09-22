SELECT * from students2;

SELECT upper(first_name) FROM students2;

SELECT upper(first_name), * FROM students2;

SELECT upper(first_name) as first_name_as_uppercase, * FROM students2;

SELECT concat(first_name, last_name) FROM students2;

SELECT concat(first_name,' ', last_name) FROM students2;

SELECT concat(first_name,' ', last_name), *  FROM students2;

SELECT concat(first_name,' ', last_name), *  FROM students2;

SELECT length(first_name), *  FROM students2;

SELECT avg(age) FROM students2;

SELECT max(age) FROM students2;

SELECT min(age) FROM students2;

SELECT sum(age) FROM students2;

SELECT count(*) FROM students2;        -- total row count

SELECT max(length(first_name)) FROM students2;        -- total row count