{{ 
    config(
    materialized='incremental',
    database='Reporting',
    schema='final_agg',
    alias='profit_by_customer',
    pre_hook=["delete from {{ this }}"]

   ) 
}}
SELECT
customerid,
segment,
country,
sum(orderprofit) as profit
FROM {{ ref('stg_orders') }}
GROUP BY 
customerid,
segment,
country