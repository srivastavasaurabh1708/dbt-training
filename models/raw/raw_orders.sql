{{
    config(
        materialized='table'
    )
}}
SELECT * 
FROM 
{{ source('GLOBALMART_FINAL', 'V_ORDERS_FINAL') }}