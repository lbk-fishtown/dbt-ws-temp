

    
    

with all_values as (

    select
        sentiment_value as value_field,
        count(*) as n_records

    from analytics.raw.raw_movie_reviews
    group by sentiment_value

)

select *
from all_values
where value_field not in (
    '1','0'
)


