
select * from music_chart where song = 'I AM';

select * from music_chart where song in ('I AM','Super Shy','Spicy');

select * from music_chart where song = 'I AM' or song = 'Super Shy' or song = 'Spicy';


-- % matches any sequence of characters, while _ matches a single character.

select * from music_chart where song like '이브%';

select * from music_chart where song like '%말해요';

select * from music_chart where song like '%S%';

select * from music_chart where singer like '정_';

select * from music_chart where singer like '__정';

select * from music_chart where song like '_카%';


-- Use ESCAPE when searching for literal % or _

create table like_test (col varchar(20));
insert into like_test values('h%i'), ('h_el_lo');

select * from like_test;

select * from like_test where col like '%%%';

select * from like_test where col like '%_%';

select * from like_test where col like '%#%%' escape '#';

select * from like_test where col like '%$_%' escape '$';


-- Between a and b; b>a
select * from music_chart where like_no between 100000 and 1500000;