with

source as (

    select * from {{ source('DBT_SC','bikestable') }}

),

products as(
    select
        Date as date,
        Year as year,
        Month as month,
        Customer_age as customer_age,
        Customer_gender as customer_gender,
        Country as country,
        State as state,
        Product_category as product_category,
        Sub_category as sub_category,
        Quantity as quantity,
        Unit_cost as unit_cost,
        Unit_price as unit_price,
        Cost as cost,
        Revenue as revenue
        
    from source
)
select * from products    