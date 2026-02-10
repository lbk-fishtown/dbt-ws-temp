

with orders as ( select * from analytics.dbt_lbk_fusion_mig.stg_tpch_orders )

select *
from   orders 
where  total_price < 0