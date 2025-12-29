use studydb;
select * from book_list;

update book_list set reg_date = '2023-08-15' where book_name = '도둑맞은 집중력';

commit;

update book_list set writer = '정미나';

rollback;

-- Without a WHERE clause, UPDATE affects all rows.