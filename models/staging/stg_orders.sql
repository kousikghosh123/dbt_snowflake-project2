select order_id , customer_id , order_date, total_amount , order_status
from {{source('raw','orders')}}
where order_status <> 'CANCELLED'