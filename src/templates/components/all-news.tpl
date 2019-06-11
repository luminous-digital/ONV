{% macro render() %}

{% set categoryFilters = [ 'News', 'Reports', 'Stocks' ] %}
{% set yearFilters = [ '2019', '2018', '2017' ] %}
{% set availableItems = [
    { itemDate: '12 April 2019', itemYear: '2019', itemTitle: 'Natgasoline LLC Begins', itemCat: 'Reports', itemUrl: '#' },
    { itemDate: '4 June 2018', itemYear: '2018', itemTitle: 'Natgasoline LLC Stops', itemCat: 'Stocks', itemUrl: '#' },
    { itemDate: '8 June 2017', itemYear: '2017', itemTitle: 'Natgasoline LLC Does something', itemCat: 'News', itemUrl: '#' }
] %}

    <section class="l-section">
        <div class="l-inner">
            <div class="c-section-divider">
                <h4 class="c-section-divider__title t-sec-divider">
                    All news
                </h4>
            </div>
            <div class="c-list-wrapper c-list-wrapper--offset-top js-list-with-filters">
                <div class="c-list-wrapper__filters">
                    <ul class="c-list-filters">
                        <li class="c-list-filters__item">
                            <div class="c-dropdown c-dropdown--small c-dropdown--absolute js-list-filter">
                                <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                    <span class="c-label js-filter-name is-visible">
                                        Category
                                    </span>
                                    <span class="c-label js-chosen-option"></span>
                                </button>
                                <ul class="c-dropdown__options">
                                    {% for categoryFilter in categoryFilters %}
                                        <li class="c-dropdown__option" data-filter-to-enable="{{ categoryFilter }}">
                                            <span class="c-label">
                                                {{ categoryFilter }}
                                            </span>
                                        </li>
                                    {% endfor %}
                                </ul>
                            </div>
                        </li>
                        <li class="c-list-filters__item">
                            <div class="c-dropdown c-dropdown--small c-dropdown--absolute js-list-filter">
                                <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                    <span class="c-label js-filter-name is-visible">
                                        Year
                                    </span>
                                    <span class="c-label js-chosen-option"></span>
                                </button>
                                <ul class="c-dropdown__options">
                                    {% for yearFilter in yearFilters %}
                                        <li class="c-dropdown__option" data-filter-to-enable="{{ yearFilter }}">
                                            <span class="c-label">
                                                {{ yearFilter }}
                                            </span>
                                        </li>
                                    {% endfor %}
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="c-list-wrapper__active-filters">
                    <ul class="c-list-active-filters js-active-filter-list">
                        <li class="c-list-active-filters__item c-list-active-filters__item--last js-list-filters-clear is-hidden">
                            <span class="c-label t-small t-link">
                                Clear all
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="c-list-wrapper__list">
                    <ul class="c-file-list js-list-items{% if twoColumns %} c-file-list--two-columns {% endif %}">
                        {% for item in availableItems %}
                            <li class="c-file-list__item" data-filterby-cat="{{ item.itemCat }}" data-filterby-year="{{ item.itemYear }}">
                                <div class="c-file-list__item-wrapper">
                                    <p class="c-file-list__date t-body t-body--alt">
                                        {{ item.itemDate }}
                                    </p>
                                    <h4 class="c-file-list__title t-h4 t-thin">
                                        <a href="{{ item.itemUrl }}">
                                            {{ item.itemTitle }}
                                        </a>
                                    </h4>
                                </div>
                            </li>
                        {%- endfor %}
                    </ul>
                </div>
                <div class="c-list-wrapper__link t-center">
                    <button class="t-link js-list-load-more">
                        <span class="c-label">
                            Show full archive
                        </span>
                    </button>
                </div>
            </div>
        </div>
    </section>

{% endmacro %}
