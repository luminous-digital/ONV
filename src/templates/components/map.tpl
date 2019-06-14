{% macro render() %}

{% set mapPoints =
    [
        {
            name: 'Facility 1',
            catID: '0',
            posX: '20%',
            posY: '71%',
            territory: 'USA',
            locType: 'Steppe',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s',
            locUrl: '#'
        },
        {
            name: 'Facility 2',
            catID: '0',
            posX: '18%',
            posY: '63%',
            territory: 'USA',
            locType: 'Mountains',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Facility 3',
            catID: '0',
            posX: '52%',
            posY: '71%',
            territory: 'Europe',
            locType: 'Lowlands',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Facility 4',
            catID: '0',
            posX: '52%',
            posY: '61%',
            territory: 'Africa',
            locType: 'Lowlands',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Facility 5',
            catID: '0',
            posX: '59%',
            posY: '58%',
            territory: 'Africa',
            locType: 'Mountains',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Facility 6',
            catID: '2',
            posX: '61%',
            posY: '52%',
            territory: 'Africa',
            locType: 'Lowlands',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Facility 7',
            catID: '1',
            posX: '21%',
            posY: '58%',
            territory: 'USA',
            locType: 'Lowlands',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        },
        {
            name: 'Facility 8',
            catID: '1',
            posX: '54%',
            posY: '77%',
            territory: 'Europe',
            locType: 'Lowlands',
            locDesc: 'OCI Nitrogen is Europe’s second largest CAN producer and the world’s largest melamine producer. Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.',
            locUrl: '#'
        }
    ]
%}

<section class="l-section l-section--no-offset">
    <div class="c-map-wrapper">
        <div class="c-map-container" data-simplebar data-simplebar-auto-hide="false">
            <div class="c-map">
                <figure class="c-map__img" style="background-image: url('/static/img/img-map-bg.png');">
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
                            data-location="{{ mapPoint.locType }}"
                            data-facility="{{ mapPoint.name }}"
                            style="left: {{ mapPoint.posX }}; bottom: {{ mapPoint.posY }}"
                        >
                            <div class="c-map-pin__modal js-map-modal">
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
                                    <a href="{{ mapPoint.locUrl }}" class="c-btn c-btn--primary c-btn--medium t-btn t-white">
                                        <span class="c-label">
                                            Read more
                                        </span>
                                    </a>
                                </div>
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
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        USA
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Europe
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
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
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Steppe
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Mountains
                                    </span>
                                </li>
                                <li class="c-dropdown__option">
                                    <span class="c-label">
                                        Lowlands
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown js-map-filter" data-filter-type="facility" data-chosen-option="">
                            <button class="c-dropdown__title js-dropdown-toggle t-small t-white t-bold">
                                <span class="c-label js-filter-name is-visible">
                                    Facility name
                                </span>
                                <span class="c-label js-chosen-option"></span>
                            </button>
                            <ul class="c-dropdown__options">
                                {% for mapPoint in mapPoints %}
                                    <li class="c-dropdown__option">
                                        <span class="c-label">
                                            {{ mapPoint.name }}
                                        </span>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</section>

{% endmacro %}
