{{ 
    config(
    materialized='view',
    database='PC_FIVETRAN_DB',
    schema='Globalmart_v',
    alias='V_PRODUCT_FINAL'
   )
}}
SELECT CATEGORY,PRODUCTID,PRODUCTNAME,SUBCATEGORY 
FROM 
{{ source('globalmart_fivetran', 'product') }}
WHERE _FIVETRAN_DELETED = 'FALSE'