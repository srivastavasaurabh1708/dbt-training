{{
    config(
        materialized='table'
    )
}}
SELECT CUSTOMERID,CUSTOMERNAME,SEGMENT,COUNTRY,STATE
FROM 
{{ source('globalmart_final', 'CUSTOMER') }}
WHERE _FIVETRAN_DELETED = 'FALSE';