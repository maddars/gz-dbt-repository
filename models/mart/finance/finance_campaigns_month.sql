select EXTRACT(MONTH FROM date_date) AS month, sum(ads_cost) as ads_cost, sum(ads_margin) as ads_margin,
 sum(operational_margin) as operational_margin, sum(average_basket) as average_basket
from 
{{ ref('finance_campaigns_day') }}
group by month
