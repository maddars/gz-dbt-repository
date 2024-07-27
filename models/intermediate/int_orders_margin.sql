select A.date_date, A.orders_id, A.revenue, A.quantity, B.purchase_cost, A.revenue- B.purchase_cost as margin
from {{ref("stg_gz_raw_data__raw_gz_sales")}} as A 
join {{ref("int_sales_margin")}} as B
using(products_id)
group by A.orders_id, A.date_date, A.revenue, b.purchase_cost, A.quantity
order by orders_id desc