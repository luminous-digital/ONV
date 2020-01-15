{% macro render(rows, cols) %}

{% set vocab = [
    '4 September 2019',
    'Q3 2018 Quarterly Results',
    'meetings',
    'Q3 2018 Quarterly Results',
    '4 June 2018',
    'Independent Non-Executive Director and Chairman'
] %}

<div class="c-table-container">
    <div class="c-list-table">
        <div class="c-list-table__row c-list-table__row--head">
            {% for i in range(0, cols) -%}
                <div class="c-list-table__cell">{{ vocab | random }}</div>
            {%- endfor %}
        </div>
        {% for i in range(0, rows) -%}
            <div class="c-list-table__row">
                {% for i in range(0, cols) -%}
                    <div class="c-list-table__cell">{{ vocab | random }}</div>
                {%- endfor %}
            </div>
        {%- endfor %}
    </div>
</div>

{% endmacro %}
