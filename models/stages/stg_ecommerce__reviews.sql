/*product_id VARCHAR,      
product_name VARCHAR,    
category VARCHAR,           
discounted_price VARCHAR,
actual_price VARCHAR,
discount_percentage VARCHAR,
rating VARCHAR,
rating_count VARCHAR,
about_product VARCHAR,
user_id VARCHAR,
user_name VARCHAR,
review_id VARCHAR,
review_title VARCHAR,
review_content VARCHAR,
img_link VARCHAR,
product_link VARCHAR*/

with

source as (

    select * from {{ source('DBT_SC','ecommerce') }}

),

reviews as(
    select
        {{ slugify('discounted_price') }},
        actual_price as price,
        discount_percentage as discount,
        rating,
        rating_count
    from source
)  
select * from reviews