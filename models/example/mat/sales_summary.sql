{{config(materialized='table')}}

select customer_id,
sum(amount) total_sales 
from sales_transactions
group by customer_id