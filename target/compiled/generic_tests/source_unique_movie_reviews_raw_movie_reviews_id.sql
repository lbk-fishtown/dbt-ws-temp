
    
    

select
    id as unique_field,
    count(*) as n_records

from analytics.raw.raw_movie_reviews
where id is not null
group by id
having count(*) > 1


