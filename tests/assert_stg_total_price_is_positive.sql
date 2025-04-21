-- Asserts that price is positive
with total_price_rec as (select * from {{ ref("stg_orders") }})
select o_orderkey, o_custkey, sum(o_totalprice) as total_price
from total_price_rec
group by 1, 2
having total_price < 0

