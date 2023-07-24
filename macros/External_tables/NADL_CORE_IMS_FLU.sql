
{% macro NADL_CORE_IMS_FLU() %}

{% set sql %}
 create or replace external table NADL_CORE_IMS_FLU
(

recordid integer as (value:c1::int),

week_end date as (value:c2::date),

age_group varchar(50) as (value:c3::varchar),

division varchar(50) as (value:c4::varchar),

market varchar(50) as (value:c5::varchar),

tot_populatn integer as (value:c6::int),

afct_wk integer as (value:c7::int),

afct_wk_prcnt numeric(10,2) as (value:c8::numeric),

afct_wk_vs_lstwk_prcnt numeric(10,2) as (value:c9::numeric),

afct_wk_vs_lstseason_prcnt numeric(10,2) as (value:c10::numeric),

afct_season_vs_lstseason_prcnt numeric(10,2) as (value:c11::numeric),

afct_yr_vs_lstyr_prcnt numeric(10,2) as (value:c12::numeric),

overall_market_status varchar(50) as (value:c13::varchar),

no_of_weeks_on_status integer as (value:c14::int),

symptom varchar(100) as (value:c15::varchar),

month_id varchar(6) as (value:c16::varchar),

currentlyprocessedfilename varchar(255) as (value:c17::varchar),

sor_dtm timestamp as (value:c18::timestamp)

)

with location = @DEV_COMX_GLOBAL.DIGSHELF_RAW.NADL_DATA_LOAD/core_ims_flu.csv*

file_format = DEV_COMX_GLOBAL.DIGSHELF_RAW.COMX_EXT_FILE_FORMAT_REF_TIME_DIM

REFRESH_ON_CREATE=TRUE

AUTO_REFRESH=TRUE

{% endset %}

{% do run_query(sql) %}

{% endmacro %}

