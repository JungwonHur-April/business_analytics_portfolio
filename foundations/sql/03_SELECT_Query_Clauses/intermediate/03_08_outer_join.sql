/*
outer join 
 1) left outer join 
 2) right outer join
 */

SELECT * from world_tour1;
SELECT * from world_tour2;

select * from world_tour1 wt1 left outer join world_tour2 wt2 on wt1.cast = wt2. cast;

select * from world_tour1 wt1 right outer join world_tour2 wt2 on wt1.cast = wt2. cast;

select * from world_tour1 wt1 left outer join world_tour2 wt2 on wt1.cast = wt2. cast where wt2.cast is not null;