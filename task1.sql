select product_name as product,
company_name as company
from products 
join suppliers 
on products.supplier_id = suppliers.supplier_id
order by product, company asc;