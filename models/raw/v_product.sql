{{ 
    config(
    materialized='view',
    schema='GLOBALMART_FINAL',
    alias='V_PRODUCT_FINAL'
   )
}}
SELECT CATEGORY,PRODUCTID,PRODUCTNAME,SUBCATEGORY 
FROM 
{{ source('globalmart_fivetran', 'product') }}
WHERE _FIVETRAN_DELETED = 'FALSE';