select 
	id as payment_id,
	orderid as order_id,
	paymentmethod as payment_method,
	status as status,
	amount / 100 as amount,
    created as created_dt
from  {{ source('stripe', 'payment') }}
