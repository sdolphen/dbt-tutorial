with 

source as (

    select * from {{ source('dbt_semantic_layer', 'payments') }}

),

renamed as (

    select
        id,
        orderid,
        paymentmethod,
        status,
        amount,
        created

    from source

)

select * from renamed
