select * from idol_member a
  where a.group_name = (select b.group_name
                          from idol_group b
                         where b.debut >= '2022-01-01');  -- Non-correlated subquery
                         
-- Use IN when filtering by multiple values.
select * from idol_member a
  where a.group_name in (select b.group_name
                          from idol_group b
                         where b.debut < '2022-01-01');  -- Multi-row subquery & non-correlated subquery

select * from idol_member
 where birthdate > (select avg(birthdate) from idol_member);  -- Single-row subquery

select * from idol_member a
 where exists (select 1 from music_chart b
                where b.singer like concat('%',a.name,'%')); -- Correlated subquery

select * from idol_member a
 where exists (select 1 from music_chart b
 				where b.singer like concat('%',a.group_name,'%'));

select * from idol_member a
 where not exists (select 1 from music_chart b
 				where b.singer like concat('%',a.group_name,'%'));