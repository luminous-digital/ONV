{% macro render(secTitle, firstParagraph, secondParagraph, btnText, btnSubtitle, noPadding, clear) %}

<div class="c-text-component {% if clear %} c-text-component--clear{% endif %}">
    <div class="c-text-component__column">
        <h2 class="c-text-component__title t-h2 {% if clear %} c-text-component__title--clear{% endif %}">
            {{ secTitle | safe }}
        </h2>
    </div>
    <div class="c-text-component__column">
        <div class="c-wysiwyg {% if noPadding %}c-wysiwyg--nopadding{% endif %}">
            {{ firstParagraph | safe }}
            <br>
            <br>
            {% import "./video-module.tpl" as c_video %}
                {{ c_video.render(videoUrl='https://www.youtube.com/embed/dQw4w9WgXcQ') }}
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
