{% macro render(pageTitle, pageSubtitle, bgPhoto) %}

<div class="l-hero">
    <div class="c-header-panel-wrapper" style="background-image: url('../static/img/{{ bgPhoto }}');">
        <div class="l-inner l-inner--90 l-inner--desktop-70">
            <div class="c-header-panel c-header-panel--short t-center">
                <h1 class="c-header-panel__title t-h1">
                    {{ pageTitle | safe }}
                </h1>
                {% if pageSubtitle %}
                    <p class="c-header-panel__desc t-body t-body--big t-white">
                        {{ pageSubtitle }}
                    </p>
                {% endif %}
            </div>
        </div>
    </div>
</div>

{% endmacro %}
