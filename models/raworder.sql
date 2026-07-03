
{{
config(
    materialized='incremental',
    unique_key='ORDER_ID',
    incremental_strategy='delete+insert'
)
}}
SELECT *
FROM {{ source('scdraw', 'RAW_ORDERS') }}