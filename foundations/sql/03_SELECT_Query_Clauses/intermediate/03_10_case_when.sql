/*
CASE WHEN
1) Simple CASE expression:
   CASE col
        WHEN val1 THEN result1
        WHEN val2 THEN result2
        ...
        ELSE val
   END

2) Searched CASE expression:
   CASE 
        WHEN col = val1 THEN res1
        WHEN col = val2 THEN res2
        ...
        ELSE val
   END
*/


create table employees (
    emp_nm   varchar(20),
    gender   varchar(1),
    hire_dt  date
);

insert into employees values ('Sung Deok-sun','F','20230506');
insert into employees values ('Kim Jung-bong','M','20221217');
insert into employees values ('Choi Taek','M','20200314');
insert into employees values ('Kim Jung-hwan','M','20230506');
insert into employees values ('Sung Bora','F','20210811');

select * from employees;

-- 

select emp_nm,
       case gender
       when 'F' then 'Female'
       when 'M' then 'Male'
       else 'Not applicable' end as gender
  from employees;

select emp_nm,
       case when gender = 'F' then 'Female'
            when gender = 'M' then 'Male'
       else 'Not applicable' end as gender
  from employees;

select emp_nm, hire_dt,
       case when hire_dt > '20230101000000' then 'New'
       else 'Existing' end as emp_type
  from employees;

select emp_nm, hire_dt,
       case when hire_dt < '20230101' then 'Existing'
            when hire_dt < '20220101' then 'Old'
       else 'New' end as emp_type
  from employees;  -- The first CASE condition takes precedence, so the second one does not apply.