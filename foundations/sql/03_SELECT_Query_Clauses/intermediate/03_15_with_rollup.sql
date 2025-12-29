select * from animal_info;

select animal, count(*) from animal_info group by animal with rollup;

select animal, type, count(*) from animal_info group by animal, type with rollup order by animal;

select case when animal is null then 'total' else animal end as animal,
       case when type is null then 'total' else type end as type,
       count(*)
  from animal_info
group by animal, type with rollup;

select animal, age, count(*)
  from animal_info
group by animal, age with rollup
order by animal;

select animal, age, count(*)
  from animal_info
group by age, animal with rollup;