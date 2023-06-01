{{
    config(
        materialized='table'
    )
}}
SELECT CUSTOMERID,CUSTOMERNAME,SEGMENT,COUNTRY,STATE
FROM 
{{ source('GLOBALMART', 'CUSTOMER') }}
WHERE _FIVETRAN_DELETED = 'FALSE';