{% macro render(quote) %}

<div class="c-quote">
    <div class="l-inner l-inner--65">
        <div class="c-quote__column">
            <h2 class="c-quote__title t-standfirst t-thin">
                {{ quote | safe }}
            </h2>
        </div>
    </div>
</div>

{% endmacro %}
