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
            </div>
        </div>
    </div>

</section>

{% endmacro %}
