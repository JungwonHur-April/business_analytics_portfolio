-- 1. Print the campground name and permit date for campgrounds located at beaches.
select biz_name, approval_date from camping_info where biz_name like '%해수욕장%';

-- 2. Print the full address and name of campgrounds located at beaches in Jeju.
select biz_name, full_address from camping_info where full_address like '%제주%' and biz_name like '%해수욕장%';

-- 3. From dataset #2, return the most recent permit date.
select max(approval_date) from camping_info where full_address like '%제주%' and biz_name like '%해수욕장%';

-- 4. From campgrounds located at beaches in Gangwon-do, return only those currently operating.
select * from camping_info where full_address like '%강원%' and biz_name like '%해수욕장%' and biz_status_code = 1;

-- 5. From dataset #4, return the oldest permit date.
select min(approval_date) from camping_info where full_address like '%강원%' and biz_name like '%해수욕장%' and biz_status_code = 1;

-- 6. Among campgrounds located at beaches, print the facility area of the largest one.
select max(facility_area) from camping_info where biz_name like '%해수욕장%';

-- 7. Print the average facility area of campgrounds located at beaches.
select avg(facility_area) from camping_info where biz_name like '%해수욕장%';