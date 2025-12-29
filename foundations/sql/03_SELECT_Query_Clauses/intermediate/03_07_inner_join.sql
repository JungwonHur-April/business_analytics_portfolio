create table world_tour1 (
  cast    varchar(20),
  name    varchar(20)
);

create table world_tour2 (
  cast    varchar(20),
  name    varchar(20)
);

insert into world_tour1 values ('Geean84','Heemin Kim');
insert into world_tour1 values ('Sian Lee','Boyeon Lee');
insert into world_tour1 values ('Pani Bottle','Jaehan Park');

insert into world_tour2 values ('Geean84','Heemin Kim');
insert into world_tour2 values ('Dex','Jinyoung Kim');
insert into world_tour2 values ('Pani Bottle','Jaehan Park');

select * from world_tour1;

select * from world_tour2;

-- 

select * from world_tour1 inner join world_tour2 on world_tour1.cast = world_tour2.cast;

select * from world_tour1 wt1 inner join world_tour2 wt2 on wt1.cast = wt2.cast;  -- Alias

select wt1.cast from world_tour1 wt1 inner join world_tour2 wt2 on wt1.cast = wt2.cast; -- When selecting a column, specify its source table.

SELECT wt1.cast from world_tour1 wt1, world_tour2 wt2 where wt1.cast = wt2.cast;

select wt1.name from world_tour1 wt1, world_tour2 wt2 where wt1.cast = wt2.cast and wt1.cast <> 'Geean84';