{{ config(materialized='table',
        pre_hook='TRUNCATE TABLE  TBL_WH_KENVUE_CITRUS_AD_DAYREPORT_CAMPAIGN'
      ) 
 }}

 
-- CAMPAIGN fact columns
--
select
camp.DATE,
'US' as COUNTRY,
dim.BRAND ,
dim.SUB_BRAND,
camp.CAMPAIGN_ID,
camp.AD_SPEND,
camp.SPEND,
camp.IMPRESSIONS,
camp.CLICKS,
camp.UNIT_SALES,
camp.SALES,
dim.GBU,
dim.SQUAD,
'TARGET'  as PLATFORM,
camp.CLIENT_ID,
camp.ID,
camp.CATALOG_ID,
camp.TEAM_ID,
camp.YEAR,
camp.QUARTER_OF_YEAR,
camp.MONTH_OF_YEAR,
camp.WEEK_OF_YEAR,
camp.UPDATE_TIME,
camp.HASH_ID,
camp.CAMPAIGN_NAME,
dim.PROFILE_ID,
dim.YR,
dim.KEYWORD_CATEGORY,
--CAMPAIGN derived columns
COALESCE(sales / NULLIF(spend,0), 0) as ROAS,
COALESCE(spend / NULLIF(clicks,0), 0) as CPC,
COALESCE(clicks / NULLIF(impressions,0), 0) as CTR,
COALESCE(unit_sales  / NULLIF(clicks,0), 0) as CVR,
COALESCE(sales / NULLIF(unit_sales ,0), 0) as AOV,
COALESCE(spend / NULLIF(unit_sales,0), 0) as CPA,
COALESCE(spend / NULLIF(sales,0), 0) as ACOS

from "DEV_COMX_GLOBAL"."RETMEDIA_INTEGRATION"."KENVUE_CITRUS_AD_DAYREPORT_CAMPAIGN" camp
left join
(
select  CLIENT_ID,
--ID,
--TAG_ID,
PROFILE_ID,
CAMPAIGN_ID,
MAX(case when FIELD_NAME='Sub-Brand' then FIELD_VALUE else NULL end) as Sub_Brand,
MAX(case when FIELD_NAME='Year' then FIELD_VALUE  else NULL end) as Yr,
MAX(case when FIELD_NAME='Keyword Category' then FIELD_VALUE  else NULL end) as Keyword_Category,
MAX(case when FIELD_NAME='Squad' then FIELD_VALUE  else NULL end) as Squad,
MAX(case when FIELD_NAME='Brand' then FIELD_VALUE  else NULL end) as Brand,
MAX(case when FIELD_NAME='GBU' then FIELD_VALUE  else NULL end) as GBU
from (

select a.*,c.tag_name field_name , b.tag_name field_value
from DEV_COMX_GLOBAL.RETMEDIA_INTEGRATION.KENVUE_CITRUS_AD_CAMPAIGN a
left join DEV_COMX_GLOBAL.RETMEDIA_INTEGRATION.KENVUE_CITRUS_AD_TAG b
on a.tag_id = b.id
left join DEV_COMX_GLOBAL.RETMEDIA_INTEGRATION.KENVUE_CITRUS_AD_TAG c
on b.parent_id = c.id
where --a.campaign_id = 'bbe8d20c-adbb-4a84-9600-d4646291dcdd'and 
b.is_deleted = 'FALSE' and c.is_deleted = 'FALSE') A

group by   
CLIENT_ID,
--ID,
--TAG_ID,
PROFILE_ID,
CAMPAIGN_ID
) as dim
on camp.CLIENT_ID = dim.CLIENT_ID
AND camp.CAMPAIGN_ID= dim.CAMPAIGN_ID


