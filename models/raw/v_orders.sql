{{ 
    config(
    materialized='view',
    schema='GLOBALMART_FINAL',
    alias='V_ORDERS_FINAL'
   )
}}
SELECT * 
FROM 
{{ source('globalmart_fivetran', 'orders') }}