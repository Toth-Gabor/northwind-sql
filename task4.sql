select company_name as company,
array_agg(orders.order_id) as order_ids
from customers
join orders
	on customers.customer_id = orders.customer_id
	group by customers.company_name
	order by company_name asc;