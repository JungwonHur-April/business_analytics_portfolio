-- 1. Print the number of campgrounds by region (use LOCATION for the region).
select substr(full_address, 1, instr(full_address,' ')) as LOCATION, count(*)
from camping_info
group by substr(full_address, 1, instr(full_address, ' '));

-- 2. From dataset #1, list regions in descending order of campground count.
select substr(full_address, 1, instr(full_address,' ')) as LOCATION, count(*)
from camping_info
group by substr(full_address, 1, instr(full_address, ' '))
order by count(*) desc;

-- 3. Print the number of operating campgrounds by region.
select substr(full_address, 1, instr(full_address,' ')) as LOCATION, count(*)
from camping_info
where biz_status_code = 1
group by substr(full_address, 1, instr(full_address, ' '))
order by count(*) desc;


-- 4. From dataset #3, return only regions with 300 or more campgrounds.
select substr(full_address, 1, instr(full_address,' ')) as LOCATION, count(*)
from camping_info
where biz_status_code = 1
group by substr(full_address, 1, instr(full_address, ' '))
having count(*) >= 300
order by count(*) desc;


-- 5. Print the number of closed campgrounds by year (use YEAR for the year).
select substr(closure_date,1,4) as YEAR, count(*)
from camping_info
where biz_status_code = 3
group by substr(closure_date,1,4);


-- 6. Sort the results from dataset #5 in descending order by year.
select substr(closure_date,1,4) as YEAR, count(*)
from camping_info
where biz_status_code = 3
group by YEAR
order by YEAR desc;