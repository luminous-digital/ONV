{% macro render(secTitle, firstParagraph, secondParagraph, btnText, btnSubtitle, btnType, noPadding) %}

<div class="c-text-component">
    <div class="c-text-component__column">
        <h2 class="c-text-component__title t-h2">
            {{ secTitle | safe }}
        </h2>
    </div>
    <div class="c-text-component__column">
        <div class="c-wysiwyg {% if noPadding %}c-wysiwyg--nopadding{% endif %}">
            {{ firstParagraph | safe }}
        </div>
        {% if secondParagraph %}
            <div class="c-wysiwyg u-m-hidden {% if noPadding %}c-wysiwyg--nopadding{% endif %}">
                {{ secondParagraph | safe }}
            </div>
        {% endif %}
        {% if btnText %}
            <div class="c-btn-wrapper c-btn-wrapper--left u-m-hidden">
                <a href="/news.html" class="c-btn c-btn--{{ btnType }} c-btn--block c-btn--padded">
                    <span class="c-label t-btn t-white">{{ btnText }}</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">{{ btnSubtitle }}</span>
                </a>
            </div>
        {% endif %}
    </div>
</div>

{% endmacro %}
