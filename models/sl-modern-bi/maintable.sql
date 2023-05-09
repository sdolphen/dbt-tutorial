/*product_id VARCHAR,       --stg
product_name VARCHAR,       --stg
category VARCHAR,           --stg
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

select
    discounted_price,
    actual_price as price,
    discount_percentage as discount,
    rating,
    rating_count
    
    
from ecommerce