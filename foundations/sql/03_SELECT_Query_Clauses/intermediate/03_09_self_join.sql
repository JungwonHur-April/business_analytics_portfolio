
CREATE TABLE high_kick (
    id         INT,
    name       VARCHAR(50),
    role       VARCHAR(50),
    parent_id  INT
);

INSERT INTO high_kick (id, name, role, parent_id) VALUES
(1, 'Stephen Lee', 'Father', NULL),
(2, 'Monica Na', 'Mother', NULL),
(3, 'John Lee', 'Older Son', 1),
(4, 'Haemi Park', 'Daughter-in-law', 1),
(5, 'Minyong Lee', 'Younger Son', 2),
(6, 'Jin Shin', 'Daughter-in-law', 2),
(7, 'Minho Lee', 'Older Grandson', 3),
(8, 'Yoonho Lee', 'Younger Grandson', 4);

select * from high_kick;


-- Use a self-join when the table has a hierarchical structure.

select * from high_kick a left outer join high_kick b on a.id = b.parent_id;

select a.id, a.name, a.role, b.id, b.name, b.role
 from high_kick a 
 left outer join high_kick b
 on a.id = b.parent_id;

select a.id, a.name, a.role, b.id, b.name, b.role, c.role, c.id, c.name
 from high_kick a 
 left outer join high_kick b
 on a.id = b.parent_id
 left outer join high_kick c
 on b.id = c.parent_id
 where a.parent_id is null;


-- CROSS JOIN: returns the Cartesian product of both tables (all possible row combinations).

select * from world_tour1 wt1 cross join world_tour2 wt2;

-- INNER JOIN without an ON clause results in a Cartesian product.

select * from world_tour1 wt1 inner join world_tour2 wt2;