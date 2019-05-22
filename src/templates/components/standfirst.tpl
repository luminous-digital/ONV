{% macro render(firstParagraph, secondParagraph) %}

<section class="l-section">
    <div class="l-inner l-inner--55">
        <p class="c-standfirst t-standfirst">
            {{ firstParagraph }}
            {% if secondParagraph %}
                <br>
                <br>
            {% endif %}
            {{ secondParagraph }}
        </p>
    </div>
</section>

{% endmacro %}
