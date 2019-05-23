{% macro render(hasSpacing) %}

<section class="l-spacing">
    <hr class="c-hr {% if hasSpacing %}c-hr--padded{% endif %}" />
</section>

{% endmacro %}
