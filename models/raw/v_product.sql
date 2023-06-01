{{ 
    config(
    materialized='view',
    schema='GLOBALMART_FINAL',
    alias='V_PRODUCT_FINAL'
   )
}}
SELECT * 
FROM 
{{ source('globalmart_fivetran', 'product') }}