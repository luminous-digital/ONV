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
    <table class="c-table" colspacing="0" colpadding="0" border="0">
        <thead>
            {% for i in range(0, cols) -%}
                <td>{{ vocab | random }}</td>
            {%- endfor %}
        </thead>
        <tbody>
            {% for i in range(0, rows) -%}
                <tr>
                    {% for i in range(0, cols) -%}
                        <td>{{ vocab | random }}</td>
                    {%- endfor %}
                </tr>
            {%- endfor %}
        </tbody>
    </table>
</div>

{% endmacro %}
