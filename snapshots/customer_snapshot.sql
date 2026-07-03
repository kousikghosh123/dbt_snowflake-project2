customer_snapshot.sql
{% snapshot customer_snapshot %}
 
{{
config(
 
target_schema='SNAPSHOTS',
 
unique_key='CUSTOMER_ID',
 
strategy='timestamp',
 
updated_at='LAST_UPDATED'
 
)
 
}}
 
SELECT *
 
FROM {{ source('scdraw', 'CUST') }}
 
{% endsnapshot %}