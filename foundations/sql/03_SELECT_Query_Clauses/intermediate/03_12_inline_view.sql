CREATE TABLE idol_group (
    group_name VARCHAR(20),
    type       VARCHAR(5),
    debut      DATE
);

CREATE TABLE idol_member (
    group_name VARCHAR(20),
    name       VARCHAR(20),
    birthdate  DATE
);

INSERT INTO idol_group VALUES ('NewJeans','girl','20220722');
INSERT INTO idol_group VALUES ('IVE','girl','20211201');
INSERT INTO idol_group VALUES ('BTS','boy','20211201');

INSERT INTO idol_member VALUES ('NewJeans', 'Minji','20040507');
INSERT INTO idol_member VALUES ('NewJeans', 'Hanni','20041006');
INSERT INTO idol_member VALUES ('NewJeans', 'Danielle','20050411');
INSERT INTO idol_member VALUES ('NewJeans', 'Haerin','20060515');
INSERT INTO idol_member VALUES ('NewJeans', 'Hyein','20080421');

INSERT INTO idol_member VALUES ('IVE', 'Yujin','20030901');
INSERT INTO idol_member VALUES ('IVE', 'Gaeul','20020924');
INSERT INTO idol_member VALUES ('IVE', 'Rei','20040203');
INSERT INTO idol_member VALUES ('IVE', 'Wonyoung','20040831');
INSERT INTO idol_member VALUES ('IVE', 'Liz','20041121');
INSERT INTO idol_member VALUES ('IVE', 'Leeseo','20070221');

INSERT INTO idol_member VALUES ('BTS', 'RM','19940912');
INSERT INTO idol_member VALUES ('BTS', 'Jin','19921204');
INSERT INTO idol_member VALUES ('BTS', 'Suga','19930309');
INSERT INTO idol_member VALUES ('BTS', 'J-Hope','19940218');
INSERT INTO idol_member VALUES ('BTS', 'Jimin','19951013');
INSERT INTO idol_member VALUES ('BTS', 'V','19951230');
INSERT INTO idol_member VALUES ('BTS', 'Jungkook','19970901');

select * from idol_group;
select * from idol_member;

-- 

-- 1:N Mapping
select m.group_name, m.name, g.debut
  from idol_member m,
       (select group_name, debut
          from idol_group
          where type = 'boy') g
  where m.group_name = g.group_name;

select m.group_name, m.name, g.debut
  from idol_member m, idol_group g
 WHERE m.group_name = g.group_name
   and g.type = 'boy';

-- 1:1 Mapping
select g.group_name, g.debut, m.youngest
  from idol_group g,
       (select group_name, max(birthdate) youngest
          from idol_member
        group by group_name) m
  where m.group_name = g.group_name;
  
select g.group_name, g.debut, max(m.birthdate) as youngest
  from idol_group g, idol_member m
 where m.group_name = g.group_name
 group by g.group_name, g.debut;


-- Create virtual data using an inline view.
SELECT tmp.hello, m.name
  from(select 'Hello!' as hello from dual) tmp,
  idol_member m;