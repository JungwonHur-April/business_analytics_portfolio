/* 1. For rest areas with an “Excellent” rating, print the number of accessible parking spaces
   (rest area name, facility type, accessible spaces, sorted in descending order). */
select s.rest_area_name, s.facility_type, p.disabled
from (
select rest_area_name, facility_type
  from rest_area_score
 where grade = '최우수'
	  ) s left outer join rest_area_parking p
	      on s.rest_area_name = p.rest_area_name
order by p.disabled desc;

/* 2. For rest areas with a “Good” rating, print the ratio of accessible parking spaces
   (rest area name, facility type, accessible space ratio, sorted in descending order). */
select s.rest_area_name, s.facility_type, round(p.disabled/p.total*100,2) as ratio
  from (
    select rest_area_name, facility_type
      from rest_area_score
     where grade = '우수'
        ) s left outer join rest_area_parking p
            on s.rest_area_name = p.rest_area_name 
order by p.disabled/p.total*100 desc;
        

/* 3. Print the average total parking spaces by facility type. */
select a.facility_type, round(avg(b.total))
  from rest_area_score a, rest_area_parking b
 where a.rest_area_name = b.rest_area_name
 group by a.facility_type

/* 4. For each route, print the top 3 rest areas with the most large-vehicle parking spaces. */
 select t.route, t.large, t.rest_area_name from(
 	select a.route, b.large, b.rest_area_name,
 		   rank() over(partition by a.route order by b.large desc) as rnk
   	  from rest_area_restroom a, rest_area_parking b
  	 where a.facility_name  = b.rest_area_name
  		) t
where t.rnk <4;

/* 5. For each headquarters division, print the top 3 rest areas with the most small-vehicle parking spaces. */
select t.headquarters, t.rest_area_name, t.small from(
	select headquarters, rest_area_name, small, rank() over(partition by headquarters order by small desc) as rnk
	  from rest_area_parking
	  ) t
where t.rnk < 4;