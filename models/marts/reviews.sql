with 

reviews as  (

    select * from {{ ref('stg_ecommerce__reviews' )}}

)/*,

customer_orders as (

    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders,
        sum(amount) as lifetime_value

    from reviews

    group by 1

),*/

select * from reviews