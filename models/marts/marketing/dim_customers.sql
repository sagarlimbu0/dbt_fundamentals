-- By defaut, when running the model it creates a VIEW
-- We can set the config of materialized as 'TABLE'

{{
    config(
        materialized = 'table'
    )
}}

-- select *
-- from dbt_trial.dbo_dbt.customer
-- ORDER BY C_MKTSEGMENT


-- Reference the existing model name
with orders
AS
(
    SELECT *
    FROM {{ ref('stg_orders') }}
),
customers
as(
    -- call the stg model for customers
    SELECT *
    FROM {{ ref('stg_customers') }}
)
SELECT
    o_custkey, o.o_orderkey, o_orderstatus, o.o_totalprice, o.o_orderpriority,
    c.c_name, c.c_address, c.c_nationkey
FROM
    orders o
LEFT JOIN customers c
    ON o.o_custkey = c.c_custkey