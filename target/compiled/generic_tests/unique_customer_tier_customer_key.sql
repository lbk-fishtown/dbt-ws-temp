
    
    

select
    customer_key as unique_field,
    count(*) as n_records

from analytics.dbt_lbk_fusion_mig.customer_tier
where customer_key is not null
group by customer_key
having count(*) > 1


