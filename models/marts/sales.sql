with 

sales as  (

    select * from {{ ref('stg_bikes__sales' )}}

)

select * from sales