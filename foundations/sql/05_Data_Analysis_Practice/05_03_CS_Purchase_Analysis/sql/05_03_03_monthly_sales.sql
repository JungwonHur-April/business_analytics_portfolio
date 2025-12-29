-- 1. Find the top 5 most expensive beverages.
select * from price_info order by price desc limit 5;

-- 2. Calculate monthly coffee beverage sales.
select substring(order_date,1,7) as month,
	   sum(coffee_pet)*(select price from price_info where product = 'coffee_pet_bottle') as "coffee_pet",
	   sum(coffee_bottle)*(select price from price_info where product = 'coffee_glass_bottle') as "coffee_bottle",
	   sum(coffee_medium_can)*(select price from price_info where product = 'coffee_medium_can') as "coffee_medium_can",
	   sum(coffee_small_can)*(select price from price_info where product = 'coffee_small_can') as "coffee_small_can"
  from store_order
 group by substring(order_date,1,7);

-- 3. Calculate juice sales on October 3rd.
select juice_large_pet*(select price from price_info where product = 'juice_large_pet') as "juice_large_pet",
	   juice_medium_pet*(select price from price_info where product = 'juice_medium_pet') as "juice_medium_pet",
	   juice_can*(select price from price_info where product = 'juice_can') as "juice_can"
  from store_order
 where order_date = '2020-10-03';

-- 4. Calculate ion drink sales in August.
select sum(ion_large_pet)*(select price from price_info where product = 'ion_drink_large_pet')+
	   sum(ion_medium_pet)*(select price from price_info where product = 'ion_drink_medium_pet')+
	   sum(ion_can)*(select price from price_info where product = 'ion_drink_can') as total
  from store_order
 where order_date like '2020-08%';  -- Avoid applying functions to columns in the WHERE clause for performance reasons.

-- 5. Calculate the sales and quantity sold of tea drinks in September.
select sum(tea_drink), sum(tea_drink)*(select price from price_info where product = 'tea_drink') as "sales"
  from store_order
 where order_date like '2020-09%';