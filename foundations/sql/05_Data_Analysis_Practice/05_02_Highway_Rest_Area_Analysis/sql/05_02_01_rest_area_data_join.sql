/* 1. Print the scale of each highway rest area along with parking capacity 
   (rest area name, facility type, total, large, small, disabled). */
select a.rest_area_name, a.facility_type, b.total, b.large, b.small, b.disabled
  from rest_area_score a left outer join rest_area_parking b
    on a.rest_area_name = b.rest_area_name
union
select b.rest_area_name, a.facility_type, b.total, b.large, b.small, b.disabled
  from rest_area_parking b left outer join rest_area_score a
    on a.rest_area_name = b.rest_area_name;


/* 2. Print the scale of each highway rest area along with restroom information 
   (rest area name, facility type, male toilets, female toilets). */
select a.rest_area_name, a.facility_type, b.male_toilets, b.female_toilets
  from rest_area_score a left outer join rest_area_restroom b
    on a.rest_area_name = b.facility_name
union
select b.facility_name, a.facility_type, b.male_toilets, b.female_toilets
  from rest_area_restroom b left outer join rest_area_score a
    on a.rest_area_name = b.facility_name;


/* 3. Print the scale, parking capacity, and restroom details for each highway rest area 
   (rest area name, facility type, total, male toilets, female toilets). */
select a.rest_area_name, a.facility_type, b.total, c.male_toilets, c.female_toilets
  from rest_area_score a, rest_area_parking b, rest_area_restroom c
 where a.rest_area_name = b.rest_area_name
   and b.rest_area_name = c.facility_name;


/* 4. By rest area size category, print the average, minimum, and maximum parking capacity. */
select a.rest_area_name, a.facility_type,
       avg(b.total) over(partition by a.facility_type) as avg_parking,
       min(b.total) over(partition by a.facility_type) as min_parking,
       max(b.total) over(partition by a.facility_type) as max_parking
  from rest_area_score a inner join rest_area_parking b
    on a.rest_area_name = b.rest_area_name;



/* 5. Based on rest area satisfaction ratings, print only the rest area with the highest number of large-vehicle parking spaces. */
select t.rest_area_name, t.grade, t.large
  from(
select a.rest_area_name, a.grade, b.large,
       rank() over(partition by a.grade order by b.large desc) as rnk
  from rest_area_score a, rest_area_parking b
 where a.rest_area_name = b.rest_area_name
       ) t
 where rnk = 1;