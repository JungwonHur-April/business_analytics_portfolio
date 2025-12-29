select * from camping_info;
select count(*) from camping_info;


/* 1.Print the campground name and full address 
   (use NAME for the business name and ADDRESS for the full address). */
select biz_name as NAME, full_address as ADDRESS from camping_info; 

-- 2. From dataset #1, return only the campgrounds that are operating normally.
select biz_name as NAME, full_address as ADDRESS from camping_info where biz_status_code = 1;

-- 3. Print how many campgrounds are located in Yangyang.
select count(*) from camping_info where full_address like '%양양%';

-- 4. From dataset #3, print how many campgrounds have closed.
select count(*) from camping_info where full_address like '%양양%' and biz_status_code = 3;

-- 5. Print the names of campgrounds located in Taean.
select biz_name from camping_info where full_address like '%태안%';

-- 6. From dataset #5, return only the campgrounds that closed in 2020.
select biz_name, closure_date from camping_info where full_address like '%태안%' and closure_date like '2020%';

-- 7. Print how many campgrounds are located in Jeju-do and Seoul.
select count(*) from camping_info where full_address like '%제주도%' or full_address like '%서울%';