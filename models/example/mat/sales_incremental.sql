{{
    config(
        materialized='incremental',
        unique_key='TRANSACTION_ID'
    )
}}

select
    TRANSACTION_ID,
    CUSTOMER_ID,
    PRODUCT_NAME,
    AMOUNT,
    LAST_UPDATED
from sales_transactions

{% if is_incremental() %}

where LAST_UPDATED >
(
    select max(LAST_UPDATED)
    from {{ this }}
)

{% endif %}