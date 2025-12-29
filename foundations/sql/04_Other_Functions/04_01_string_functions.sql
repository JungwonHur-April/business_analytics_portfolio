select substring('The weather today feels really nice.',1,15) from dual;

select substring('The weather today feels really nice.',17) from dual;

select substr('The weather today feels really nice.',1,15) from dual;

select substr('The weather today feels really nice.',17) from dual;

select length('The weather today feels really nice.') from dual;

select concat('The weather today ','feels really nice.') from dual;

select upper('The weather') from dual;

select lower('The weather') from dual;

select trim(' The weather today feels really nice. ') from dual;

select instr('The weather today feels really nice.','weather') from dual;

select replace('The weather today feels really nice.','today','tomorrow') from dual;

select lpad('The weather today feels really nice.',40,'★') from dual;