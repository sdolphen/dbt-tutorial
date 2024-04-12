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
        {{ dbt_utils.generate_surrogate_key(['Customers.id', 'Orders.id', 'Payments.id']) }} as id,
        Customers.id as CustomerId,
        Customers.first_name AS FirstName,
        Customers.last_name AS LastName,
        Orders.id as OrderId,
        Orders.order_date AS OrderDate,
        Orders.order_timestamp as OrderTimestamp,
        Orders.status AS Status,
        Payments.id as PayementId,
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