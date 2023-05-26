
SELECT orderid,SUM(ordersellingprice) AS tsp
FROM 
{{ ref('raw_orders') }}
GROUP BY 1
HAVING tsp<0