with 

source as (

    select * from {{ source('dbt_semantic_layer', 'orders') }}

),

renamed as (

    select
        id,
        user_id,
        order_date,
        CAST(order_date AS TIMESTAMP) as order_timestamp,
        status

    from source

)

select * from renamed
