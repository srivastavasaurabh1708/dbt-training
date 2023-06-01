{{ 
    config(
    materialized='view',
    schema='GLOBALMART_FINAL',
    alias='V_CUSTOMER_FINAL'
   )
}}
SELECT * 
FROM 
{{ source('globalmart_fivetran', 'customer') }}