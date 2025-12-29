select * from book_list;

delete from book_list where publisher = '북로망스';

-- Clear a specific column in a specific row 
update book_list set writer = null where book_name = '도둑맞은 집중력';

commit;

-- Without a WHERE clause, DELETE removes all rows