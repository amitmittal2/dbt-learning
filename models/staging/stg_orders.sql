SELECT
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode, 
o.ordersellingprice,
o.ordercostprice,
o.ordersellingprice - o.ordercostprice AS orderprofit,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.category,
p.productname,
p.subcategory,
{{ markup('o.ordersellingprice', 'o.ordercostprice' ) }} AS markup_macro
FROM {{ ref('raw_orders') }} o
LEFT JOIN {{ ref('raw_customers') }} AS c
    ON o.customerid = c.customerid
LEFT JOIN {{ ref('raw_products') }} AS p
    ON o.productid = p.productid
{{ macro_limit_data_in_dev('o.orderdate') }}
