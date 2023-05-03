{% macro limit_data_dev(column_name) %}
{% if target.name =='dev' %}

where {{ column_name }} >= dateadd('day', -3, current_timestamp)

{% endif %}
{% endmacro%}


/* add this macro function in your (staging) model queries to only get data from the 3 last days in the dataset (dev)*/
