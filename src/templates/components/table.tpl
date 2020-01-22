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
                        <td>{{ vocab | random}}</td>
                    {%- endfor %}
                </tr>
            {%- endfor %}
            <tr>
                <td>
                    <a data-udi="umb://media/896e1173a8c1462c9953137f9c775515" href="/media/1481/oci-nv-q4-2018-results-report-final-vf.pdf" title="OCI N.V. Q4 2018 Results Report Final Vf" class="t-body-link">
                        <span class="c-label">OCI N.V. Q4 2018 Results Report Final vF</span>
                    </a>
                </td>
                <td>
                    <a data-udi="umb://media/896e1173a8c1462c9953137f9c775515" href="/media/1481/oci-nv-q4-2018-results-report-final-vf.pdf" title="OCI N.V. Q4 2018 Results Report Final Vf">
                        <span class="c-label">OCI N.V. Q4 2018 Results Report Final vF</span>
                    </a>
                </td>
                {% for i in range(0, cols - 2) -%}
                    <td>{{ vocab | random}}</td>
                {%- endfor %}
            </tr>
        </tbody>
    </table>
</div>

{% endmacro %}
