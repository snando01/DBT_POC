
{{ config( materialized='table',
pre_hook='TRUNCATE TABLE  TBL_KENVUE_CRITEO_AD__DAYREPORT_PRODUCT') }}

with final as (

select distinct a.retailer_id, b.retailer_name, count(a.retailer_id) as total_retailer_id, min(date) as Start_date, max(date) as End_date
from  {{ source ('DIGITAL_SHELF','KENVUE_CRITEO_AD__DAYREPORT_PRODUCT') }} a
left join  {{ source ('DIGITAL_SHELF','KENVUE_CRITEO_RETAILERS') }} b
on  a.retailer_id = b.retailer_id
group by 1,2

)



select *
from final