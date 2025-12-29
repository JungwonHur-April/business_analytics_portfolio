use studydb;
select * from book_list;

alter table book_list add column description varchar(1000);

alter table book_list modify column book_name varchar(100);

desc book_list;

alter table book_list change column description book_desc varchar(1000);

alter table book_list drop column book_desc;

alter table book_list rename book_info;

select * from book_info;

alter table book_info rename book_list;

/*
Alter by using tool:
- Database > Tables > book_info
- Right-click > Create New Column
- Data Type > Edit number
- Click a column > Rename or Delete
*/