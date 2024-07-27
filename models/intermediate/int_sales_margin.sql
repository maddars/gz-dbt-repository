select * , quantity*purchase_price as purchase_cost
from {{ref("stg_gz_raw_data__raw_gz_sales")}}
join {{ref("stg_gz_raw_data__raw_gz_product")}}
using (products_id)