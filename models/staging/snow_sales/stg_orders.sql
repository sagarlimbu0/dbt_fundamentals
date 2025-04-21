SELECT 
        o_orderkey, 
        o_custkey, 
        o_orderstatus, 
        o_totalprice, 
        o_orderpriority

FROM {{ source('snow_sales', 'orders') }}
-- FROM DBT_TRIAL.DBO_DBT.orders
