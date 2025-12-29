use studydb;
select * from book_list;
 
truncate table book_list;

drop table book_list;

-- TRUNCATE TABLE : remove all rows from the table, but keep the table structure.
-- DROP TABLE     : remove the table itself, including its structure and all data.