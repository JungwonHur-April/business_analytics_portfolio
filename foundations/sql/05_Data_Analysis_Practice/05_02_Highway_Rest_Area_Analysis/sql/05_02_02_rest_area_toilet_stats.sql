-- 1. For each route, print the maximum number of male and female restroom stalls.
select route, max(male_toilets), max(female_toilets)
  from rest_area_restroom
group by route;

-- 2. Among all rest areas, print which rest area has the highest total number of stalls.
select facility_name, male_toilets+female_toilets as total
  from rest_area_restroom
order by total desc
limit 1;

-- 3. For each route, print the average number of male and female restroom stalls.
select route, round(avg(male_toilets)), round(avg(female_toilets))
  from rest_area_restroom
group by route;

-- 4. For each route, print only the route with the highest total number of stalls.
select t.route, t.facility_name, t.total
  from (
select route, facility_name, male_toilets+female_toilets as total,
       rank() over(partition by route order by male_toilets+female_toilets desc) as rnk
  from rest_area_restroom
  		)t
where t.rnk = 1;

/* 5. For each route, print:
   - the number of rest areas where male stalls > female stalls,
   - the number of rest areas where female stalls > male stalls,
   - the number of rest areas where male and female stalls are equal. */
select route,
	   count(case when male_toilets > female_toilets then 1 end) as male,
	   count(case when female_toilets > male_toilets then 1 end) as female,
	   count(case when female_toilets = male_toilets then 1 end) as equal,
	   count(*) as total
  from rest_area_restroom
group by route;