{% macro render() %}

<section class="l-section l-section--no-offset js-map-container" data-kml="https://luminous.co.uk/countryboundaries_6.kml" data-json="/src/js/modules/map/locations.json">
    <div class="c-map-wrapper">
        <div class="c-map-container">
            <div class="c-map-popup js-map-popup-container">
                <div class="c-map-popup__close js-map-modal-close">
                    <svg class="o-svg">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#close"></use>
                    </svg>
                </div>
                <div class="c-map-popup__content"></div>
            </div>
            <div class="c-map js-map" aria-label="google map" data-zoom="2.4" data-lat="0" data-lng="0">
            </div>
        </div>
    </div>
    <div class="c-map-nav-wrapper">
        <div class="l-inner">
            <div class="c-map-nav">
                <ul class="c-map-nav__pins">
                    <li class="c-map-nav-pin c-map-nav-pin--blue">
                        <p class="c-map-nav-pin__desc">
                            Nitrogen
                        </p>
                    </li>
                    <li class="c-map-nav-pin c-map-nav-pin--green">
                        <p class="c-map-nav-pin__desc">
                            Methanol
                        </p>
                    </li>
                    <li class="c-map-nav-pin c-map-nav-pin--grey">
                        <p class="c-map-nav-pin__desc">
                            Supply chain
                        </p>
                    </li>
                </ul>
                <p class="c-map-nav__clear-all t-body t-body--alt js-map-clear-all">
                    <span class="c-label">Clear all</span>
                </p>
                <p class="c-map-nav__filters-title t-h3">
                    Filter by:
                </p>
                <ul class="c-map-nav__filters">
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown js-map-filter" data-filter-type="territory" data-chosen-option="">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label js-filter-name is-visible">
                                    Country/territory
                                </span>
                                <span class="c-label js-chosen-option"></span>
                            </button>
                            <ul class="c-dropdown__options">
                                <li class="c-dropdown__option" data-attr="territory" data-val="USA">
                                    <span class="c-label">
                                        USA
                                    </span>
                                </li>
                                <li class="c-dropdown__option" data-attr="territory" data-val="Europe">
                                    <span class="c-label">
                                        Europe
                                    </span>
                                </li>
                                <li class="c-dropdown__option" data-attr="territory" data-val="Africa">
                                    <span class="c-label">
                                        Africa
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown js-map-filter" data-filter-type="location" data-chosen-option="">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label js-filter-name is-visible">
                                    Location type
                                </span>
                                <span class="c-label js-chosen-option"></span>
                            </button>
                            <ul class="c-dropdown__options">
                                <li class="c-dropdown__option" data-attr="locationType" data-val="Steppe">
                                    <span class="c-label">
                                        Steppe
                                    </span>
                                </li>
                                <li class="c-dropdown__option" data-attr="locationType" data-val="Mountains">
                                    <span class="c-label">
                                        Mountains
                                    </span>
                                </li>
                                <li class="c-dropdown__option" data-attr="locationType" data-val="Lowlands">
                                    <span class="c-label">
                                        Lowlands
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown js-map-filter js-map-filter-facility">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label js-filter-name is-visible">
                                    Facility name
                                </span>
                                <span class="c-label js-chosen-option"></span>
                            </button>
                            <ul class="c-dropdown__options js-options">
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</section>

{% endmacro %}
