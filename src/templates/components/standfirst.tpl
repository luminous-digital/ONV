{% macro render(paragraph, isFirstSection) %}

<section class="l-section" {% if isFirstSection %}id="first-section"{% endif %}>
    <div class="l-inner l-inner--55">
        <p class="c-standfirst t-standfirst">
            {{ paragraph | safe }}
        </p>
    </div>
</section>

{% endmacro %}
