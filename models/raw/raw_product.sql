{{
    config(
        materialized='table'
    )
}}
SELECT * 
FROM 
{{ source('GLOBALMART', 'V_PRODUCT_FINAL') }}