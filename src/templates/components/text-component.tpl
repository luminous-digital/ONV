{% macro render(secTitle, firstParagraph, secondParagraph, btnText, btnSubtitle, noPadding) %}

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
            <div class="c-btn-wrapper c-btn-wrapper--left c-btn-wrapper--medium u-m-hidden">
                <a href="/news.html" class="c-btn c-btn--download">
                    <span class="c-label t-btn t-white t-thin">{{ btnText }}</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">{{ btnSubtitle }}</span>
                    <span class="c-btn__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                        </svg>
                    </span>
                </a>
            </div>
        {% endif %}
    </div>
</div>

{% endmacro %}
