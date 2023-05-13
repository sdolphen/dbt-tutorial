{% macro slugify(column_name) %}

REGEXP_REPLACE(LOWER({{column_name}}), '₹', '') AS {{ column_name }}

{% endmacro %}