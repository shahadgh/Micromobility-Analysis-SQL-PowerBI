
with cte as (			--we grouped both table under 1 name. connect yr from both table "common data connection"
select * from bike_share_yr_0
  union
 select * from bike_share_yr_1

)

select dteday, season, a.yr, weekday, hr, rider_type, riders, price, COGS,
riders * price as revenue,
riders * price - COGS as profit

from cte as a
left join cost_table as b
on a.yr = b.yr


 -- //select * from cte as a
  -- //left join cost_table as b		--add cost table to the left. connect table a & b by/on "yr", which shares same value
  -- //on a.yr = b.yr

 



