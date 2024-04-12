with 

source as (

    select * from {{ source('dbt_semantic_layer', 'orders') }}

),

renamed as (

    select
        id,
        user_id,
        order_date,
        status

    from source

)

select * from renamed
