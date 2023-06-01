{{ 
    config(
    materialized='table',
    database='Reporting',
    schema='final_agg',
    alias='profit_by_product'
   )
}}
SELECT
productid,
productname,
category,
subcategory,
sum(orderprofit) as profit
FROM {{ ref('stg_orders') }}
GROUP BY 
productid,
productname,
category,
subcategory