with 

source as (

    select * from {{ source('dbt_semantic_layer', 'payments') }}

),

renamed as (

    select
        id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        created

    from source

)

select * from renamed
