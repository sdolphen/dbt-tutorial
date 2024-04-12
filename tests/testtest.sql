{% macro testtest(modelname, column_name)%}

select
    customer_id, 
    avg({{column_name}}) as average_amount
from {{ modelname }}
group by 1
having count(customer_id) > 1 and average_amount < 1

{% endmacro %}