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

products as(
    select
        product_id as product_id,
        product_name as product_name,
        category as product_category
        
    from source
)
select * from products