select company_name as company,
product_name as product,
unit_price as price
from products
inner join suppliers
	on products.supplier_id = suppliers.supplier_id
	group by company_name,product_name,unit_price
	order by unit_price desc, product_name,company_name asc;