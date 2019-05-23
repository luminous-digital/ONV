{% macro render() %}

<section class="l-tabbed-section js-tabbed-section">

    <section class="l-section">
        <div class="l-inner">
            <ul class="c-content-tabs">
                <li class="c-content-tabs__tab js-section-tab">
                    <button class="c-content-tabs__btn t-btn" data-tab="0">
                        <span class="c-label">
                            Fertilizers
                        </span>
                    </button>
                </li>
                <li class="c-content-tabs__tab js-section-tab is-active">
                    <button class="c-content-tabs__btn t-btn" data-tab="1">
                        <span class="c-label">
                            Industrial chemicals
                        </span>
                    </button>
                </li>
            </ul>
        </div>
    </section>

    <section class="l-tab js-section-content" data-tab-section="0">
        {% block operations_tab_0 %}
            {% import "template-parts/operations-tab-0.tpl" as operations_tab_0 with context %}
            {{ operations_tab_0.render() }}
        {% endblock %}
    </section>

    <section class="l-tab js-section-content is-active" data-tab-section="1">
        {% block operations_tab_1 %}
            {% import "template-parts/operations-tab-1.tpl" as operations_tab_1 with context %}
            {{ operations_tab_1.render() }}
        {% endblock %}
    </section>

</section>

{% endmacro %}
