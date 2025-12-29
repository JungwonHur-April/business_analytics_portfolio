-- 1. Print the total monthly sales of coffee beverages.
select substring(order_date,1,7) as month,
      sum(coffee_pet), sum(coffee_bottle), sum(coffee_medium_can), sum(coffee_small_can)
  from store_order
group by substring(order_date,1,7);

-- 2. From dataset #1, find which beverage had the highest sales.
select substring(order_date,1,7) as month,
       greatest(sum(coffee_pet), sum(coffee_bottle), sum(coffee_medium_can), sum(coffee_small_can)) as greatest
  from store_order
group by substring(order_date,1,7);


-- 3. Pivot the coffee_pet data from dataset #1.
select 'coffee_pet' as product,
		sum(case when substring(order_date,1,7)='2020-07' then coffee_pet end) as '2020-07',
		sum(case when substring(order_date,1,7)='2020-08' then coffee_pet end) as '2020-08',
		sum(case when substring(order_date,1,7)='2020-09' then coffee_pet end) as '2020-09',
		sum(case when substring(order_date,1,7)='2020-10' then coffee_pet end) as '2020-10'
  from store_order;

-- 4. Print the monthly average sales of carbonated drinks and bottled water.
select substring(order_date,1,7) as month,
	   floor(avg(sparkling_water)), floor(avg(bottled_water))
  from store_order
  group by substring(order_date,1,7);

-- 5. Print the maximum monthly sales of vitamin water, energy drinks, and health drinks.
select substring(order_date,1,7) as month,
	   max(vitamin_water), max(energy_drink), max(health_drink)
  from store_order
  group by substring(order_date,1,7);