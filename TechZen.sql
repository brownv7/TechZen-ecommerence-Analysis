/*
------------------------------
SQL Project - TechZen Analysis
------------------------------
*/

--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 
    -- join orders to customers, then customers to the geo lookup table
    -- quarters per year, COUNT(order id), SUM(usd_price) & AVG(usd_price)
    -- WHERE product_name LIKE 'Macbook%' AND region = 'NA'
    -- THEN wrap the above in a CTE & take the average to produce 1 final row 

with quarterly_metrics as (
  select date_trunc(orders.purchase_ts, quarter) as purchase_quarter,
    count(distinct orders.id) as order_count,
    round(sum(orders.usd_price),2) as total_sales
  from core.orders
  left join core.customers
    on orders.customer_id = customers.id
  left join core.geo_lookup 
    on customers.country_code = geo_lookup.country
  where lower(orders.product_name) like '%macbook%'
    and region = 'NA'
  group by 1
  order by 1 desc)

select avg(order_count) as avg_quarter_orderes,
  avg(total_sales) as avg_quarter_sales
from quarterly_metrics;

--2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 
    --join the order status table with orders, then customers and geo lookup
    --filter to (2022 purchases made on the website) and purchases on mobile
    --calculate the time to deliver using a date diff and take the average per region

select geo_lookup.region, 
  avg(date_diff(order_status.delivery_ts, order_status.purchase_ts, day)) as time_to_deliver
from core.order_status
left join core.orders
  on order_status.order_id = orders.id
left join core.customers
  on customers.id = orders.customer_id
left join core.geo_lookup
  on geo_lookup.country = customers.country_code
where (extract(year from orders.purchase_ts) = 2022 and purchase_platform = 'website')
  or purchase_platform = 'mobile app'
group by 1
order by 2 desc   

 --EMEA has the highest avg time to deliver at 7.54 days. (didn't initally use purchase_ts in date_dif --> used ship_ts)

-- Overall average delivery time
  -- Take an aggregate of an aggregate - put query above in CTE and take the average.

--3) What was the refund rate and refund count for each product per year? 
    --join orders to order status and clean up the product name
    -- create a “helper column” using a case when statement to code 1 for refunds, 0 if not a refund
    -- take the sum of this for the refund count, and average it for the refund rate
    -- order for highest refund rates first, so we can see those products first

  select extract(year from orders.purchase_ts) as purchase_year,
      case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
      sum(case when refund_ts is not null then 1 else 0 end) as refunds,
      avg(case when refund_ts is not null then 1 else 0 end) as refund_rate
  from core.orders 
  left join core.order_status 
      on orders.id = order_status.order_id
  group by 1,2
  order by 3 desc;

  -- Both Laptops (ThinkPad & Macbook) were refunded at higher rates than other items (11.73% & 11.43%). Compared to the iPhone which has a 7.64% refund rate.

--4) Within each region, what is the most popular product? 
    --  join orders, customers and geo lookup to match products to regions
    --  count the total orders per product, per region - need a CTE for this
    --  then rank each product and region by the total orders in a new CTE
    --  order by this ranking to find the most popular product per region

 with sales_by_product as (
  select region,
  product_name,
  count(distinct orders.id) as total_orders
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
  on geo_lookup.country = customers.country_code
group by 1,2)

select *, 
	row_number() over (partition by region order by total_orders desc) as order_ranking
from sales_by_product
qualify row_number() over (partition by region order by total_orders desc) = 1;

-- Across all regions, Apple Airpods are the most popular product based on the volume ordered.

--5) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 
    -- join customers to orders to order status
    -- calculate the date difference between purchase timestamp and account creation in days, and calculate a separate column for months
    -- average these two columns and group by loyalty program

 select customers.loyalty_program, 
  round(avg(date_diff(order_status.purchase_ts, customers.created_on, day)),1) as days_to_purchase,
  round(avg(date_diff(order_status.purchase_ts, customers.created_on, month)),1) as months_to_purchase
from core.customers
left join core.orders
  on customers.id = orders.customer_id
left join core.order_status
  on order_status.order_id = orders.id
group by 1   