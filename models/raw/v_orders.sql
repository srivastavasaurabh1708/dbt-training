{{ 
    config(
    materialized='view',
    database='PC_FIVETRAN_DB',
    schema='Globalmart_v',
    alias='V_ORDERS_FINAL'
   )
}}
SELECT ORDERID,ORDERDATE,SHIPDATE,SHIPMODE,CUSTOMERID,PRODUCTID,ORDERCOSTPRICE,ORDERSELLINGPRICE  
FROM 
{{ source('globalmart_fivetran', 'orders') }}
WHERE _FIVETRAN_DELETED = 'FALSE'