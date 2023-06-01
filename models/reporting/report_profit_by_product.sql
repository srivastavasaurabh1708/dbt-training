
{{ 
    config(
    materialized='incremental',
    database='Reporting',
    schema='final_agg',
    alias='profit_by_product',
    pre_hook=["delete from {{ this }}"]

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