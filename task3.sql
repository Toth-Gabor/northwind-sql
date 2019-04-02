select company_name as company
from suppliers
join products
	on suppliers.supplier_id = products.supplier_id
	group by suppliers.company_name
	having count(products.product_name) > 4
	order by company_name asc;