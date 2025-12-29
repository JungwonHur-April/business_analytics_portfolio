-- 1. Print the campground name and facility area in descending order of facility size.
select biz_name, facility_area from camping_info order by facility_area desc;

-- 2. From dataset #1, return only the top 10 records.
select biz_name, facility_area from camping_info order by facility_area desc limit 10;

-- 3. From campgrounds in Gyeonggi-do, return the top 5 by facility area (largest first).
select * from camping_info where full_address like '%경기%' order by facility_area desc limit 5;

-- 4. Exclude the #1 record from dataset #3.
select * from camping_info where full_address like '%경기%' order by facility_area desc limit 1,4;

-- 5. Among operating campgrounds, return the 20 oldest permit dates.
select * from camping_info where biz_status_code = 1 order by approval_date limit 20; 

-- 6. Print the campground name and full address of campgrounds that closed between October 2020 and March 2021.
select biz_name, full_address, closure_date from camping_info where closure_date between '2020-10-01' and '2021-03-31';

-- 7. Among the closed campgrounds, print the name and facility area of the one with the largest facility size.
select biz_name, facility_area from camping_info where biz_status_code = 3 order by facility_area desc limit 1;