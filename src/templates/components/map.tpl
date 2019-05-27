{% macro render(mapPoints) %}

{% set mapPoints =
    [
        {
            name: 'Name 1',
            catID: '0',
            posX: '20%',
            posY: '71%',
            territory: '0',
            locType: 'Type 1',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s',
            locUrl: '#'
        },
        {
            name: 'Name 2',
            catID: '0',
            posX: '18%',
            posY: '63%',
            territory: '2',
            locType: 'Type 2',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Name 3',
            catID: '0',
            posX: '52%',
            posY: '71%',
            territory: '1',
            locType: 'Type 1',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Name 4',
            catID: '0',
            posX: '52%',
            posY: '61%',
            territory: '2',
            locType: 'Type 3',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Name 5',
            catID: '0',
            posX: '59%',
            posY: '58%',
            territory: '3',
            locType: 'Type 5',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Name 6',
            catID: '2',
            posX: '61%',
            posY: '52%',
            territory: '2',
            locType: 'Type 3',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Name 7',
            catID: '1',
            posX: '21%',
            posY: '58%',
            territory: '3',
            locType: 'Type 2',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Name 8',
            catID: '1',
            posX: '54%',
            posY: '77%',
            territory: '3',
            locType: 'Type 2',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        }
    ]
%}

<section class="l-section l-section--no-offset">
    <div class="c-map-wrapper">
        <div class="c-map-container" data-simplebar data-simplebar-auto-hide="false">
            {# <div class="c-map-container__scrollbar">
                <div class="c-scroll">
                </div>
            </div> #}
            <div class="c-map">
                <figure class="c-map__img">
                </figure>
                <ul class="c-map-pin-list">
                    {% set pinColors = [
                        'green',
                        'blue',
                        'grey'
                    ] %}
                    {% for mapPoint in mapPoints %}
                        <li
                            class="c-map-pin c-map-pin--{{ pinColors[mapPoint.catID] }} js-map-pin"
                            data-category-id="{{ mapPoint.catID }}"
                            data-territory="{{ mapPoint.territory }}"
                            data-location-type="{{ mapPoint.locType }}"
                            style="left: {{ mapPoint.posX }}; bottom: {{ mapPoint.posY }}"
                        >
                        </li>
                    {% endfor %}
                </ul>
                <ul class="c-map__modals">
                    {% for mapPoint in mapPoints %}
                        <li class="c-map-pin__modal js-map-modal">
                            <div class="c-map-pin__close js-map-modal-close">
                                <svg class="o-svg">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#close"></use>
                                </svg>
                            </div>
                            <h3 class="c-map-pin__title t-h3">
                                {{ mapPoint.name }}
                            </h3>
                            <p class="c-map-pin__desc t-body">
                                {{ mapPoint.locDesc }}
                            </p>
                            <div class="c-btn-wrapper c-btn-wrapper--left">
                                <a href="{{ mapPoint.locUrl }}" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                                    <span class="c-label">
                                        Read more
                                    </span>
                                </a>
                            </div>
                        </li>
                    {% endfor %}
                </ul>
            </div>
        </div>
    </div>
    <div class="c-map-nav-wrapper">
        <div class="l-inner">
            <div class="c-map-nav">
                <ul class="c-map-nav__pins">
                    <li class="c-map-nav-pin c-map-nav-pin--blue">
                        <p class="c-map-nav-pin__desc">
                            Fertilizers
                        </p>
                    </li>
                    <li class="c-map-nav-pin c-map-nav-pin--green">
                        <p class="c-map-nav-pin__desc">
                            Chemicals
                        </p>
                    </li>
                    <li class="c-map-nav-pin c-map-nav-pin--grey">
                        <p class="c-map-nav-pin__desc">
                            Sales and distribution
                        </p>
                    </li>
                </ul>
                <p class="c-map-nav__filters-title t-h3">
                    Filter by:
                </p>
                <ul class="c-map-nav__filters">
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label">
                                    Country/territory
                                </span>
                            </button>
                            <ul class="c-dropdown__options">
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Country/territory
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Country/territory
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Country/territory
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label">
                                    Location type
                                </span>
                            </button>
                            <ul class="c-dropdown__options">
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Location type
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Location type
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Location type
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label">
                                    Facility name
                                </span>
                            </button>
                            <ul class="c-dropdown__options">
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Facility name
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Facility name
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Facility name
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</section>

{% endmacro %}
