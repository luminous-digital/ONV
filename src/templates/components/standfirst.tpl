{% macro render(paragraph) %}

<section class="l-section">
    <div class="l-inner l-inner--55">
        <p class="c-standfirst t-standfirst">
            {{ paragraph | safe }}
        </p>
    </div>
</section>

{% endmacro %}
