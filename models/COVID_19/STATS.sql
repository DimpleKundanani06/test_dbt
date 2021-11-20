 
{{ config(materialized='table') }}

with STATS as (
    SELECT 
TOTAL_DEATHS
TOTAL_RECOVERED,
NEW_DEATHS,
NEW_CASES,
CASE_FATALITY_RATE,
TOTAL_CASES,
GROWTH_FACTOR_OF_NEW_CASES,
DATE
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_DIMPLE_KUDANANI"
),

final as (

select *
from
 STATS

)

select * from final
