select ifnull('acutal data','replacement value') from dual;

select ifnull(null,'replacement value') from dual;

select coalesce('data1','data2','data3') from dual;
select coalesce(null,'data2','data3') from dual;
select coalesce(null,null,'data3') from dual;

-- NULLIF: returns NULL if both values match; otherwise returns the first value.
select nullif('data','data') from dual;
select nullif('data1','data2') from dual;

select isnull('data') from dual;
select isnull(null) from dual;