{% macro render(hasSpacing) %}

<section class="l-spacing">
    <hr class="c-hr {% if hasSpacing %}{% if hasSpacing == 'small' %}c-hr--padded-small{% elif hasSpacing == 'medium' %}c-hr--padded-medium{% else %}c-hr--padded{% endif %}{% endif %}" />
</section>

{% endmacro %}
