SELECT date_date , sum(ads_cost) as ads_cost, sum(click) as click, sum(impression) as impression
from {{ ref('int_campaigns') }}
group by date_date
order by date_date