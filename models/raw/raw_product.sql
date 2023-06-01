{{
    config(
        materialized='table'
    )
}}
SELECT * 
FROM 
{{ source('GLOBALMART_FINAL', 'V_PRODUCT_FINAL') }}