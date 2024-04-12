with 

source as (

    select * from {{ source('dbt_semantic_layer', 'customers') }}

),

renamed as (

    select
        id,
        first_name,
        last_name

    from source

)

select * from renamed
