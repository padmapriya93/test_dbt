{% test unique_records(model, column_name) %}
SELECT {{ column_name }}, count(*) FROM {{ model }} group by {{ column_name }} having count(*)>1
{% endtest %}