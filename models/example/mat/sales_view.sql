{{config(materialized='view')}}

select transaction_id,
       customer_id,
       product_name,
       amount 
from sales_transactions