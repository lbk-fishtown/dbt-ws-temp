
    
    

select
    movie_review_id as unique_field,
    count(*) as n_records

from analytics.dbt_lbk_fusion_mig.stg_movie_reviews
where movie_review_id is not null
group by movie_review_id
having count(*) > 1


