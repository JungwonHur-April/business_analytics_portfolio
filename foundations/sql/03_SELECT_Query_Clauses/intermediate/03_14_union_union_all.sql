-- UNION ALL
select * from world_tour1
union all
select * from world_tour2
order by cast;
  -- Both queries must select the same number of columns.

select cast, name from world_tour1
union all
select name, cast from world_tour2;

select cast as C, name as N from world_tour1
union all
select cast as "출연자", name as "이름" from world_tour2;


-- UNION: removes duplicates and returns distinct rows.
select * from world_tour1
union
select * from world_tour2
order by cast;


/* intersect */
select * from world_tour1 a
 where exists (select 1 from world_tour2 b where a.cast = b.cast);

/* minus */
select * from world_tour1 a
 where not exists (select 1 from world_tour2 b where a.cast = b.cast);