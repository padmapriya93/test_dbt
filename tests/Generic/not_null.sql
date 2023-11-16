{% test not_null(model, column_name) %}
SELECT * FROM {{ model }} where {{ column_name }} IS NULL
{% endtest %}