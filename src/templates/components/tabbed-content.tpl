{% macro render() %}

<section class="swiper-container l-tabbed-section js-tabbed-section-slider">

    <section class="l-section l-section--header">
        <div class="l-inner">
            <ul class="c-content-tabs js-tabbed-section-nav">
            </ul>
        </div>
    </section>

    <div class="swiper-wrapper l-tab-wrapper">

        <section class="swiper-slide l-tab swiper-no-swiping" data-slide-title="Fertilizers">
            {% block operations_tab_0 %}
                {% import "template-parts/operations-tab-0.tpl" as operations_tab_0 with context %}
                {{ operations_tab_0.render() }}
            {% endblock %}
        </section>

        <section class="swiper-slide l-tab swiper-no-swiping" data-slide-title="Industrial chemicals">
            {% block operations_tab_1 %}
                {% import "template-parts/operations-tab-1.tpl" as operations_tab_1 with context %}
                {{ operations_tab_1.render() }}
            {% endblock %}
        </section>

    </div>

</section>

{% endmacro %}
