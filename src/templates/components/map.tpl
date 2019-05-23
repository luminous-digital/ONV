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

<section class="l-section">
    <div class="c-map-wrapper">
        <div class="c-map-container">
            <div class="c-map-container__scrollbar">
                <div class="c-scroll">
                </div>
            </div>
            <ul class="c-map">
                <figure class="c-map__img">
                </figure>
                {% for mapPoint in mapPoints %}
                    <li
                        class="c-map-pin c-map-pin--cat-{{ mapPoint.catID }} js-map-pin"
                        data-category-id="{{ mapPoint.catID }}"
                        data-territory="{{ mapPoint.territory }}"
                        data-location-type="{{ mapPoint.locType }}"
                        style="left: {{ mapPoint.posX }}; bottom: {{ mapPoint.posY }}"
                    >
                        <div class="c-map-pin__modal js-map-modal">
                            <div class="c-map-pin__close js-map-modal-close">
                            </div>
                            <h3 class="c-map-pin__title t-h3">
                                {{ mapPoint.name }}
                            </h3>
                            <p class="c-map-pin__desc t-body">
                                {{ mapPoint.locDesc }}
                            </p>
                            <div class="c-btn-wrapper">
                                <a href="{{ mapPoint.locUrl }}" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                                    Read more
                                </a>
                            </div>
                        </div>
                    </li>
                {% endfor %}
            </ul>
        </div>
    </div>
    <div class="c-map-nav-wrapper">
        <div class="l-inner">
            <div class="c-map-nav">
                <ul class="c-map-nav__pins">
                    <li class="c-map-nav-pin">
                        <p class="c-map-nav-pin__desc">
                            Fertilizers
                        </p>
                    </li>
                    <li class="c-map-nav-pin">
                        <p class="c-map-nav-pin__desc">
                            Chemicals
                        </p>
                    </li>
                    <li class="c-map-nav-pin">
                        <p class="c-map-nav-pin__desc">
                            Sales and distribution
                        </p>
                    </li>
                </ul>
                <ul class="c-map-nav__filters">
                    <li class="c-map-nav__filter">
                        <div class="c-dropdown">
                            <button class="c-dropdown__label">
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
                </ul>
            </div>
        </div>
    </div>

</section>

{% endmacro %}
