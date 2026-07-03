select *
from {{ source('scdraw', 'CUST') }}