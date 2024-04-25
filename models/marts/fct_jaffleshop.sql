WITH 

customers AS (
    select * from {{ ref('stg_dbt_learn__customers') }}
),

orders AS (
    select * from {{ ref('stg_dbt_learn__orders') }}
),

payments AS (
    select * from {{ ref('stg_dbt_learn__payments') }}
),

final AS (
    select
        {{ dbt_utils.generate_surrogate_key(['customers.id', 'orders.id', 'payments.id']) }} as sk_id,
        customers.id as customer_id,
        customers.first_name,
        customers.last_name,
        orders.id as order_id,
        orders.order_date,
        orders.status as order_status,
        payments.id as payment_id,
        payments.payment_method,
        payments.status as payment_status,
        payments.amount as amount,
        payments.created as payment_created_at
    from
        orders
        inner join customers
        on orders.user_id = customers.id
        inner join payments
        on payments.order_id = orders.id
)

select * from final