CREATE TABLE employees2 (
    first_name    VARCHAR(30),
    last_name     VARCHAR(30),
    department_id INT,
    salary        INT
);

INSERT INTO employees2 (first_name, last_name, department_id, salary) VALUES
('Matthew',  'Weiss',    50, 8000),
('Payam',    'Kaufling', 50, 7900),
('Shanta',   'Vollman',  50, 6500),
('Kevin',    'Mourgos',  50, 5800),
('Nandita',  'Sarchand', 50, 4200),
('Alexis',   'Bull',     50, 4100),
('Sarah',    'Bell',     50, 4000),
('Britney',  'Everett',  50, 3900),
('Kelly',    'Chung',    50, 3800),
('Renske',   'Ladwig',   50, 3600),
('Jennifer', 'Dilly',    50, 3600),
('Trenna',   'Rajs',     50, 3500),
('Julia',    'Dellinger',50, 3400),
('Laura',    'Bissot',   50, 3300),
('Jason',    'Mallin',   50, 3300),
('Julia',    'Nayer',    50, 3200),
('Stephen',  'Stiles',   50, 3200);


-- Window functions calculate values over a defined partition.

select * from idol_member;

select group_name, 
       count(*) over(partition by group_name) as member_cnt
  FROM idol_member;

select group_name, count(*) from idol_member group by group_name;

select group_name,
	   min(birthdate) over(partition by group_name) as member_min
  from idol_member;

select group_name, min(birthdate) from idol_member group by group_name;

select group_name,
	   max(birthdate) over(partition by group_name) as number_max
  from idol_member;

select group_name, max(birthdate) from idol_member group by group_name;


-- Ranking window functions: ROW_NUMBER, RANK, DENSE_RANK

select first_name, last_name, department_id, salary,
	   row_number() over(partition by department_id order by salary desc) as row_no,
	   rank() over(partition by department_id order by salary desc) as rank_no,
	   dense_rank() over(partition by department_id order by salary desc) as dense_rank_no
  from employees2
  order by department_id, row_no;