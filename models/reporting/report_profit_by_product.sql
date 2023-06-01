{{
    config(
        materialized='table'
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