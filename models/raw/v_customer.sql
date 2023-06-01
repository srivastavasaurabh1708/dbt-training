{{ 
    config(
    materialized='view',
    schema='GLOBALMART_FINAL',
    alias='V_CUSTOMER_FINAL'
   )
}}
SELECT CUSTOMERID,CUSTOMERNAME,SEGMENT,COUNTRY,STATE 
FROM 
{{ source('globalmart_fivetran', 'customer') }}
WHERE _FIVETRAN_DELETED = 'FALSE';