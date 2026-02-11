{% test min_row_count(model, min_row) %}
    SELECT COUNT(*) AS cnt
    FROM {{ model }}
    HAVING COUNT(*) < {{ min_row }}
{% endtest %}
