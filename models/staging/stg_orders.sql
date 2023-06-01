{{ 
    config(
    materialized='view',
    schema='GLOBALMART_FINAL',
    alias='V_STG_ORDERS'
   )
}}
SELECT 
-- from raw_orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice,
o.ordercostprice,
o.ordersellingprice - o.ordercostprice as orderprofit,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('v_orders') }} o
LEFT JOIN {{ ref('v_customer') }} c ON o.customerid = c.customerid
LEFT JOIN {{ ref('v_product') }} p ON o.productid = p.productid