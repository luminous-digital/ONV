{% macro render(columnName1, columnName2, columnName3, listCount, showSubtitles, mapItems) %}

    <section class="l-section">
        <div class="l-inner">
                <div class="c-list-wrapper js-list">
                    {% if showSubtitles %}
                        <h3 class="c-list-wrapper__subtitle t-h3">
                            Subtitle
                        </h3>
                    {% endif %}
                    <div class="c-list-wrapper__list">
                        <ul class="c-contact-list">
                            <li class="c-contact-list__item">
                                    <div class="c-contact-list__item-wrapper">
                                        <p class="c-contact-list__text t-body t-bold t-blue">
                                            {{ columnName1 }}
                                        </p>
                                        <p class="c-contact-list__name t-body t-blue">
                                            {{ columnName2 }}
                                        </p>
                                        <p class="c-contact-list__text t-body t-bold t-blue">
                                            {{ columnName3 }}
                                        </p>
                                    </div>
                                </li>
                                {% for mapItem in mapItems %}
                                    {% if loop.index0 < listCount %}
                                        <li class="c-contact-list__item">
                                            <div class="c-contact-list__item-wrapper">
                                                <p class="c-contact-list__text t-body t-body--alt t-bold t-dgrey">
                                                    {{ mapItem.col1 }}
                                                </p>
                                                <p class="c-contact-list__name t-body t-bold t-blue">
                                                    {{ mapItem.col2 }}
                                                </p>
                                                <p class="c-contact-list__text t-body t-body--alt t-bold t-dgrey">
                                                    {{ mapItem.col3 }}
                                                </h4>
                                            </div>
                                        </li>
                                    {% endif %}
                                {% endfor %}
                        </ul>
                    </div>
                </div>
        </div>
    </section>

{% endmacro %}
