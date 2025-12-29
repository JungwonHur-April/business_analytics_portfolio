use studydb;
create table music_chart (
    ranking     int,
    song        varchar(50),
    singer      varchar(20),
    album       varchar(50),
    like_no     int
);


insert into music_chart values (1, 'Super Shy', 'NewJeans', 'NewJeans 2nd EP Get Up', 115766);
insert into music_chart values (2, 'Seven (feat. Latto) - Clean Ver.', '정국', 'Seven (feat. Latto) - Clean Ver.', 124697);
insert into music_chart values (3, 'ETA', 'NewJeans', 'NewJeans 2nd EP Get Up', 60239);
insert into music_chart values (4, '퀸카 (Queencard)', '(여자)아이들', 'I feel', 125309);
insert into music_chart values (5, 'I AM', 'IVE (아이브)', 'Ive IVE', 188847);
insert into music_chart values (6, '헤어지자 말해요', '박재정', '1집 Alone', 96577);
insert into music_chart values (7, '이브, 프시케 그리고 푸른 수염의 아내', 'Le Sserafim (르세라핌)', 'UNFORGIVEN', 96863);
insert into music_chart values (8, 'Spicy', 'aespa', 'MY WORLD - The 3rd Mini Album', 115388);
insert into music_chart values (9, 'Steal The Show (From 엘리멘탈)', 'Lauv', 'Steal The Show (From 엘리멘탈)', 108665);
insert into music_chart values (10, 'New Jeans', 'NewJeans', 'NewJeans 2nd EP Get Up', 57308);


-- select [column] from [table] where [clause]

select * from music_chart;

select singer from music_chart;

select distinct singer from music_chart;

select count(distinct singer) as cnt from music_chart

select ranking, song from music_chart where singer = 'NewJeans';

select * from music_chart where singer = 'NewJeans' and ranking < 6;

select * from music_chart where singer = '정국' or singer = '박재정';

select * from music_chart limit 3;