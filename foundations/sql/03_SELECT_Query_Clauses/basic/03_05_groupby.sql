CREATE TABLE animal_info (
    animal  VARCHAR(20),
    type    VARCHAR(30),
    name    VARCHAR(30),
    age     INT
);

INSERT INTO animal_info (animal, type, name, age) VALUES
('Dog', 'Pomeranian', 'Mango', 3),
('Cat', 'Munchkin', 'Tofu', 5),
('Cat', 'Siamese', 'Mango', 5),
('Cat', 'Persian', 'Jenny', 3),
('Dog', 'Chihuahua', 'Chichi', 11),
('Dog', 'Poodle', 'Kkobe', 7),
('Dog', 'Pomeranian', 'Munk', 6),
('Dog', 'Chihuahua', 'Choco', 4),
('Cat', 'Munchkin', 'Salgu', 5),
('Cat', 'Persian', 'Candy', 3),
('Dog', 'Poodle', 'Garcon', 6),
('Dog', 'Jindo', 'Baekgu', 9),
('Dog', 'Welsh Corgi', 'Kami', 10),
('Cat', 'Russian Blue', 'Cloud', 3),
('Cat', 'Munchkin', 'Kami', 4),
('Cat', 'Siamese', 'Dori', 2),
('Cat', 'Russian Blue', 'Latte', 11),
('Cat', 'Munchkin', 'Nokdu', 7),
('Dog', 'Pomeranian', 'Berry', 4),
('Cat', 'Persian', 'Nana', 8);

select * from animal_info;


-- Selecting non-grouped columns causes an error (unless MySQL is in non-strict mode)

select animal, count(*) from animal_info group by animal;

select animal, max(age) from animal_info group by animal;

select animal, min(age) from animal_info group by animal;

select animal, sum(age), avg(age) from animal_info group by animal;

select age, count(*) from animal_info group by age order by age;

select animal, type, count(*) from animal_info group by animal, type order by animal;

select animal, type, count(*) from animal_info where animal = 'Dog' group by animal, type;

select animal, type, avg(age) from animal_info group by animal, type order by animal;

select animal, type, min(age), max(age) from animal_info group by animal, type order by animal; 