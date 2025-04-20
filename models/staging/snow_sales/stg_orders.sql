SELECT 
        o_orderkey, 
        o_custkey, 
        o_orderstatus, 
        o_totalprice, 
        o_orderpriority
<<<<<<< HEAD
FROM {{ source('snow_sales', 'orders') }}
-- FROM DBT_TRIAL.DBO_DBT.orders
=======
FROM DBT_TRIAL.DBO_DBT.orders
>>>>>>> 9c4e1b08f702f55390406b4c1e68a8ac40764cec
