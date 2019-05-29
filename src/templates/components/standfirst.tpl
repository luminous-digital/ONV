{% macro render(paragraph, desc) %}

<section class="l-section">
    <div class="l-inner l-inner--55">
        <p class="c-standfirst t-standfirst">
            {{ paragraph | safe }}
        </p>
        {% if desc %}
            <p class="c-standfirst-desc t-body t-center">
                {{ desc | safe }}
            </p>
        {% endif %}
    </div>
</section>

{% endmacro %}
