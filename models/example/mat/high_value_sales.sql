{{config(materialized = 'ephemeral')}}

select * from sales_transactions
where amount > 10000