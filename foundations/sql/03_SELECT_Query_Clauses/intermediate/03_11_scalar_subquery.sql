CREATE TABLE grade_info (
    code INT,
    name VARCHAR(20)
);

INSERT INTO grade_info (code, name) VALUES
(1, 'VIP'),
(2, 'GOLD'),
(3, 'SILVER');

select * from grade_info;

CREATE TABLE customers (
    id         VARCHAR(30),
    name       VARCHAR(50),
    grade_code INT
);

INSERT INTO customers (id, name, grade_code) VALUES
('angel1004', 'Sophie', 1),
('soso94',    'Nate',   2),
('nobuy20',   'Anna',   3);

select * from customers;


-- Correlated subquery
select a.id, a.name,
       (select b.name from grade_info b where b.code = a.grade_code) as grade
  from customers a;

select a.id, a.name, b.name
  from customers a left outer join grade_info b
    on b.code = a.grade_code;

select a.id, a.name,
       (select b.name from grade_info b where b.code=1) as grade1,
       (select b.name from grade_info b where b.code=2) as grade2,
       (select b.name from grade_info b where b.code=3) as grade3
  from customers a;


-- Non-correlated subquery
select a.id, a.name,
       (select b.name from grade_info b where b.code=1) as grade
  from customers a;