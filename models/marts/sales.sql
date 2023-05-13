with 

salesbikes as(

    select * from {{ ref('stg_bikes__sales' )}}

)

select * from salesbikes