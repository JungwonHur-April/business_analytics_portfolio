-- 1. Among rest areas with pet playgrounds, list those that provide Wi-Fi.
select *
  from rest_area_pet a
  left outer join rest_area_wifi b
    on a.rest_area_name = b.rest_area_name 
 where b.availability ='O';

-- 2. Among rest areas with pet playgrounds, print how many operate 24 hours.
select count(*) from rest_area_pet where operating_hours = '24시간';

-- 3. By headquarters division, print how many rest areas provide Wi-Fi.
select headquarters, count(*) 
  from rest_area_wifi
 where availability = 'O'
group by headquarters;
 
-- 4. Sort dataset #3 by rest area count in descending order.
select headquarters, count(*) 
  from rest_area_wifi
 where availability = 'O'
group by headquarters
order by count(*) desc;

-- 5. From dataset #4, print only the entries where the number of rest areas exceeds 25.
select headquarters, count(*) 
  from rest_area_wifi
 where availability = 'O'
group by headquarters
having count(*) > 25
order by count(*) desc;