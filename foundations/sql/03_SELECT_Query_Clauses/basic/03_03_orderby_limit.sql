-- Clause order: SELECT > FROM > WHERE > GROUP BY > HAVING > ORDER BY

select * from music_chart order by ranking;

select * from music_chart order by ranking desc;

select * from music_chart order by ranking asc;

select song, singer from music_chart order by ranking;

select * from music_chart where singer not in ('정국','박재정') order by song;

-- ORDER BY sorts by columns in left-to-right priority.
select * from music_chart order by singer asc, like_no desc;

select * from music_chart order by like_no desc limit 3;

select * from music_chart order by like_no desc limit 3,5;  -- Paging: start at row 3, fetch 5 rows.