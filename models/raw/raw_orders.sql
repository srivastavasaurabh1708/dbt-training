{{
    config(
        materialized='table'
    )
}}
SELECT * 
FROM 
{{ source('GLOBALMART', 'V_ORDERS_FINAL') }}