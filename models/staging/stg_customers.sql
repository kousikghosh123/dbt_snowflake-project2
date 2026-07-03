{{ config(materialized='table') }}


select 
 customer_id , 
 first_name,
 last_name,
 lower(email) as email,
 created_date,
 status
 from {{source('raw','customers')}}