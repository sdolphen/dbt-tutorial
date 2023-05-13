with 

products as  (

    select * from {{ ref('stg_ecommerce__products' )}}

)/*,

orders_and_order_payments_joined as (

    select
        products.order_id,
        products.customer_id,
        products.order_date,
        coalesce(products.total_amount, 0) as amount,
        coalesce(products.gift_card_amount, 0) as gift_card_amount

    from orders

    left join order_payments on orders.order_id = order_payments.order_id

)*/

select * from products