UPDATE weather
SET date = DATE_FORMAT(STR_TO_DATE(date, '%m/%d/%y'), '%Y-%m-%d');

-- 1. Print only the days when it rained.
select date from weather where daily_rainfall > 0;

-- 2. Print the sales of iced drinks on days with a maximum temperature of 30°C or higher.
select a.date, a.max_temp, b.iced_drink
 from weather a left outer join store_order b
   on a.date = b.order_date
where a.max_temp >= 30;
  
-- 3. Print the sales of health drinks on days with a minimum temperature below 20°C.
select a.date, a.min_temp, b.health_drink
  from weather a left outer join store_order b
    on a.`date` = b.order_date
 where a.min_temp < 20;

-- 4. Print the sales of hangover-relief drinks on rainy days.
select date, a.daily_rainfall, b.hangover_relief_drink
  from weather a left outer join store_order b
    on a.`date` = b.order_date 
 where daily_rainfall > 0;

-- 5. Add sales data to the result of query #4.
select date, a.daily_rainfall, 
	   ifnull(b.hangover_relief_drink,0), 
	   ifnull(b.hangover_relief_drink*(select price from price_info where product = 'hangover_relief_drink'),0) as "sales"
  from weather a left outer join store_order b
    on a.`date` = b.order_date 
 where daily_rainfall > 0;