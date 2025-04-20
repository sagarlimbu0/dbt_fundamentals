SELECT 
<<<<<<< HEAD
    c_custkey, 
    c_name, 
    c_address, 
    c_nationkey, 
    c_comment    
FROM {{ source('snow_sales', 'customers')}}
-- FROM DBT_TRIAL.DBO_DBT.CUSTOMER
=======
    c_custkey, c_name, c_address, c_nationkey, c_comment    
FROM DBT_TRIAL.DBO_DBT.CUSTOMER
>>>>>>> 9c4e1b08f702f55390406b4c1e68a8ac40764cec
