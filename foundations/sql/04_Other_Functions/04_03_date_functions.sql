select now() from dual; -- Query execution timing
select sysdate() from dual; -- Function evaluation timing within the query

select now(), sleep(5), now() from dual;
select sysdate(), sleep(5), sysdate() from dual;

select current_date() from dual;

select adddate(now(),10) from dual;
select adddate('20230901',3) from dual;

select last_day(now()) from dual;
select last_day('20231225') from dual;

select year(now()) from dual;
select month(now()) from dual;
select day(now()) from dual;

select year('20231225') from dual;
select month('20231225') from dual;
select day('20231225') from dual;