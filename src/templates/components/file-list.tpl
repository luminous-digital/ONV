{% macro render(secTitle, twoColumns, listCount, showDownload, showShowMore, showSubtitles, isDatePadded) %}

    <section class="l-section">
        <div class="l-inner">
                <div class="c-list-wrapper js-list">
                    <h2 class="c-list-wrapper__title t-h2">
                        {{ secTitle | safe }}
                    </h2>
                    {% if showSubtitles %}
                        <h3 class="c-list-wrapper__subtitle t-h3">
                            Shareholder meetings
                        </h3>
                    {% endif %}
                    <div class="c-list-wrapper__list">
                        <ul class="c-file-list js-list-items{% if twoColumns %} c-file-list--two-columns{% endif %}">
                            {% for i in range(0, listCount) -%}
                                <li class="c-file-list__item">
                                    <div class="c-file-list__item-wrapper">
                                        <p class="c-file-list__date t-body t-body--alt{% if isDatePadded %} t-body--padded{% endif %}">
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
                            {%- endfor %}
                        </ul>
                    </div>
                    {% if showShowMore %}
                        <div class="c-list-wrapper__link t-center">
                            <button class="t-link js-list-load-more">
                                <span class="c-label">
                                    Show more
                                </span>
                            </button>
                        </div>
                    {% endif %}
                </div>
        </div>
    </section>

{% endmacro %}