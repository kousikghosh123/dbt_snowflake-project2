{% snapshot custom_snapshot %}

{{
config(

target_schema='SNAPSHOTS',

unique_key='CUSTOMER_ID',

strategy='check',

check_cols=[
'CITY',
'EMAIL',
'ANNUAL_INCOME',
'MARITAL_STATUS'
]

)

}}

SELECT *

FROM {{ source('raw','CUSTOMER_MASTER') }}

{% endsnapshot %}