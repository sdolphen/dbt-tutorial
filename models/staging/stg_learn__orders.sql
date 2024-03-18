with 

source as (

    select * from {{ source('dbt_learn', 'orders') }}

),

renamed as (

    select
        id,
        user_id,
        order_id,
        status

    from source

)

select * from renamed
