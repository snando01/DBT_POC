
{{ config(materialized='view') }}

with source_data as (

select a.retailer_id, b.retailer_name, count(a.retailer_id) as total_retailer_id, min(date) as Start_date
, max(date) as End_date
from PACVUE_KENVUE.KENVUE.KENVUE_CRITEO_AD__DAYREPORT_LINE_ITEM a
left join COMMEX_DB.DIGITAL_SHELF.KENVUE_CRITEO_RETAILERS b
on  a.retailer_id = b.retailer_id
group by 1,2

)

select *
from source_data