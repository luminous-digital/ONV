{% macro render(secTitle, listCount, showDownload) %}

    <section class="l-section">
        <div class="l-inner">
            {% for i in range(0, listCount) -%}
                <div class="c-list-wrapper js-list">
                    {% if (i == 0) %}
                        <h2 class="c-list-wrapper__title t-h2">
                            {{ secTitle | safe }}
                        </h2>
                    {% endif %}
                    <h3 class="c-list-wrapper__subtitle t-h3">
                        Shareholder meetings
                    </h3>
                    <div class="c-list-wrapper__list">
                        <ul class="c-file-list js-list-items">
                            <li class="c-file-list__item">
                                <div class="c-file-list__item-wrapper">
                                    <p class="c-file-list__date t-body t-body--alt">
                                        4 June 2018
                                    </p>
                                    <h4 class="c-file-list__title t-h4 t-thin">
                                        Q3 2018 Quarterly Results
                                    </h4>
                                    {% if showDownload %}
                                        <div class="c-btn-wrapper c-btn-wrapper--right">
                                            <a href="/news.html" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                                <span class="c-label t-btn t-blue">Download PDF</span>
                                                <span class="c-sub-label t-btn t-btn--small t-blue">2.5MB</span>
                                                <span class="c-btn__icon">
                                                    <svg class="o-svg">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    {% endif %}
                                </div>
                            </li>
                            <li class="c-file-list__item">
                                <div class="c-file-list__item-wrapper">
                                    <p class="c-file-list__date t-body t-body--alt-mobile">
                                        4 June 2018
                                    </p>
                                    <h4 class="c-file-list__title t-h4 t-thin">
                                        H1 2018 Interim Results
                                    </h4>
                                    {% if showDownload %}
                                        <div class="c-btn-wrapper c-btn-wrapper--right">
                                            <a href="/news.html" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                                <span class="c-label t-btn t-blue">Download PDF</span>
                                                <span class="c-sub-label t-btn t-btn--small t-blue">2.5MB</span>
                                                <span class="c-btn__icon">
                                                    <svg class="o-svg">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    {% endif %}
                                </div>
                            </li>
                            <li class="c-file-list__item">
                                <div class="c-file-list__item-wrapper">
                                    <p class="c-file-list__date t-body t-body--alt-mobile">
                                        4 June 2018
                                    </p>
                                    <h4 class="c-file-list__title t-h4 t-thin">
                                        Q1 2018 Quarterly Results
                                    </h4>
                                    {% if showDownload %}
                                        <div class="c-btn-wrapper c-btn-wrapper--right">
                                            <a href="/news.html" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                                <span class="c-label t-btn t-blue">Download PDF</span>
                                                <span class="c-sub-label t-btn t-btn--small t-blue">2.5MB</span>
                                                <span class="c-btn__icon">
                                                    <svg class="o-svg">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    {% endif %}
                                </div>
                            </li>
                            <li class="c-file-list__item">
                                <div class="c-file-list__item-wrapper">
                                    <p class="c-file-list__date t-body t-body--alt-mobile">
                                        4 June 2018
                                    </p>
                                    <h4 class="c-file-list__title t-h4 t-thin">
                                        FY 2017 Annual Results
                                    </h4>
                                    {% if showDownload %}
                                        <div class="c-btn-wrapper c-btn-wrapper--right">
                                            <a href="/news.html" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                                <span class="c-label t-btn t-blue">Download PDF</span>
                                                <span class="c-sub-label t-btn t-btn--small t-blue">2.5MB</span>
                                                <span class="c-btn__icon">
                                                    <svg class="o-svg">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    {% endif %}
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="c-list-wrapper__link t-center">
                        <button class="t-link js-list-load-more">
                            <span class="c-label">
                                Show more
                            </span>
                        </button>
                    </div>
                </div>
            {%- endfor %}
        </div>
    </section>

{% endmacro %}