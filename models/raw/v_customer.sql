{{ 
    config(
    materialized='view',
    database='PC_FIVETRAN_DB',
    schema='Globalmart_v',
    alias='V_CUSTOMER_FINAL'
   )
}}
SELECT CUSTOMERID,CUSTOMERNAME,SEGMENT,COUNTRY,STATE 
FROM 
{{ source('globalmart_fivetran', 'customer') }}
WHERE _FIVETRAN_DELETED = 'FALSE'