-- Aggregate Functions: COUNT, SUM, AVG, MIN, MAX (Often used together with GROUP BY)

select * from music_chart;

select count(*) from music_chart;  -- COUNT() returns the number of rows  / COUNT(column) counts only non-NULL values 

select count(*) from music_chart where like_no > 100000;

-- 

create table function_test (col1 int, col2 int);
insert into function_test values(10,null),(20,30);
select * from function_test;

select count(*), count(1), count(col1),count(col2) from function_test;

select sum(col1), sum(col2) from function_test;

select avg(col1), avg(col2) from function_test;  -- NULL values are ignored and not included in average calculations 

select min(col1), min(col2) from function_test;

select max(col1), max(col2) from function_test;