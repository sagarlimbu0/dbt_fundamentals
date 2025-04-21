SELECT 
    c_custkey, 
    c_name, 
    c_address, 
    c_nationkey,
    c_mktsegment,
    c_comment    
FROM {{ source('snow_sales', 'customers')}}
-- FROM DBT_TRIAL.DBO_DBT.CUSTOMER
