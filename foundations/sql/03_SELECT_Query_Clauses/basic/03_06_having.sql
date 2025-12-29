-- Aggregates are not allowed in WHERE; use them in the GROUP BY/HAVING clause.

select animal, type, count(*) from animal_info group by animal, type;

select animal, type, count(*) from animal_info group by animal, type having count(*)>2 order by count(*) desc;

select animal, type, count(*) 
from animal_info
where animal = 'Cat'
group by animal, type 
having count(*)>2 order by count(*) desc;

select animal, type, count(*) 
from animal_info
group by animal, type 
having count(*)>2 and animal = 'Cat'
order by count(*) desc;

-- SQL execution order: FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY
-- Writing conditions in HAVING instead of WHERE forces unnecessary processing.

select animal, type, max(age)
from animal_info
group by animal, type
having max(age) > 10;