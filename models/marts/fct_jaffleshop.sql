WITH 

Customers AS (
    select * from {{ ref('stg_dbt_learn__customers') }}
),

Orders AS (
    select * from {{ ref('stg_dbt_learn__orders') }}
),

Payments AS (
    select * from {{ ref('stg_dbt_learn__payments') }}
),

Final AS (
    select
        Customers.first_name AS FirstName,
        Customers.last_name AS LastName,
        Orders.order_date AS OrderDate,
        Orders.status AS Status,
        Payments.paymentmethod AS PaymentMethod,
        Payments.status AS PaymentStatus,
        Payments.amount AS Amount,
        Payments.created AS Created
    from
        Orders
        INNER JOIN Customers
        ON Orders.user_id = Customers.id
        INNER JOIN Payments
        ON Payments.orderid = Orders.id
)

select * from final