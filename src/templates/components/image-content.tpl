{% macro render(sectionTitle, sectionContent, sectionImg, btnFirst, btnSecond) %}

<section class="l-section">
    <div class="l-inner">
        <div class="c-image-content">
            <figure class="c-image-content__image">
                <img src="./static/img/{{ sectionImg }}" alt="{{ sectionTitle | safe }}">
            </figure>
            <div class="c-image-content__wrapper">
                <h2 class="c-image-content__title t-h2">
                    {{ sectionTitle | safe }}
                </h2>
                <p class="c-image-content__text t-body">
                    {{ sectionContent | safe }}
                </p>
                {% if btnFirst or btnSecond %}
                    <div class="c-btn-wrapper c-btn-wrapper--equal-btns c-btn-wrapper--two-btns">
                        {% if btnFirst %}
                            <a href="/news.html" class="c-btn c-btn--download c-btn--download--icon-centered c-btn--block">
                                <span class="c-label t-btn t-white t-thin">Download AR 2018</span>
                                <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                                <span class="c-btn__icon">
                                    <svg class="o-svg">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                    </svg>
                                </span>
                            </a>
                        {% endif %}
                        {% if btnSecond %}
                            <a href="/news.html" class="c-btn c-btn--download c-btn--download--icon-centered c-btn--block">
                                <span class="c-label t-btn t-white t-thin">Download presentation 2018</span>
                                <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                                <span class="c-btn__icon">
                                    <svg class="o-svg">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                    </svg>
                                </span>
                            </a>
                        {% endif %}
                    </div>
                {% endif %}
            </div>
        </div>
    </div>
</section>

{% endmacro %}
