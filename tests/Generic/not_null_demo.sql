{% test not_null_demo(model, column_name) %}
SELECT * FROM {{ model }} where {{ column_name }} IS NULL
{% endtest %}