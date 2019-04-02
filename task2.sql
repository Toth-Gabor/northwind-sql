select company_name as company_name,
count(products.product_name) as products
from suppliers 
join products
	on suppliers.supplier_id = products.supplier_id
	group by company_name
	order by products desc, company_name asc;