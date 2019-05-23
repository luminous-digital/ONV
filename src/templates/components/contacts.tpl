{% macro render(secTitle, firstTitle, firstContent, secondTitle, secondContent) %}

<section class="l-section l-section--no-offset">
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                {{ secTitle }}
            </h4>
        </div>
    </div>
    <div class="l-inner">
        <div class="c-contacts">
            <h3 class="c-contacts__title t-h3 t-center">
                {{ firstTitle }}
            </h3>
            <p class="c-contacts__content t-body t-center">
                {{ firstContent | safe }}
            </p>
            {% if secondTitle %}
                <h3 class="c-contacts__title t-h3 t-center">
                    {{ secondTitle }}
                </h3>
            {% endif %}
            {% if secondContent %}
                <p class="c-contacts__content t-body t-center">
                    {{ secondContent | safe }}
                </p>
            {% endif %}
        </div>
    </div>
</section>

{% endmacro %}
