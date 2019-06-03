{% macro render(secTitle, perRow, count) %}

    {% set cards = [
        {
            cardImg: './static/img/key-areas/img-health-safety.jpg',
            cardTitle: 'Supporting local STEM programmes'
        },
        {
            cardImg: './static/img/key-areas/img-environment.jpg',
            cardTitle: 'OCI Nitrogen Awarded “Best Training Company 2018”'
        },
        {
            cardImg: './static/img/key-areas/img-communities.jpg',
            cardTitle: 'OCI Beaumont is a VPP Star Site'
        },
        {
            cardImg: './static/img/key-areas/img-health-safety.jpg',
            cardTitle: 'Investing in local healthcare initiatives'
        },
        {
            cardImg: './static/img/key-areas/img-environment.jpg',
            cardTitle: 'Supporting local STEM programmes'
        },
        {
            cardImg: './static/img/key-areas/img-communities.jpg',
            cardTitle: 'Investing in local social causes that matter to our communities'
        },
        {
            cardImg: './static/img/key-areas/img-environment.jpg',
            cardTitle: 'Supporting local STEM programmes'
        },
        {
            cardImg: './static/img/key-areas/img-health-safety.jpg',
            cardTitle: 'Investing in local healthcare initiatives'
        },
        {
            cardImg: './static/img/key-areas/img-communities.jpg',
            cardTitle: 'Investing in local social causes that matter to our communities'
        }
    ] %}

    {% if perRow == 1 %}
        {% set mod='by-one' %}
    {% elif perRow == 2 %}
        {% set mod='by-two' %}
    {% elif perRow == 3 %}
        {% set mod='by-three' %}
    {% elif perRow == 4 %}
        {% set mod='by-four' %}
    {% elif perRow == 5 %}
        {% set mod='by-five' %}
    {% endif %}

    <section class="l-section">
        <div class="l-inner">
            {% if secTitle %}
                <div class="c-section-divider">
                    <div class="l-inner">
                        <h4 class="c-section-divider__title t-sec-divider">
                            {{ secTitle }}
                        </h4>
                    </div>
                </div>
            {% endif %}
            <div class="c-grid-wrapper c-grid-wrapper--{{ mod }}">
                    {% for card in cards %}
                        {% if loop.index < count + 1 %}
                            <div class="c-grid-block">
                                <figure class="c-grid-block__image">
                                    <img src="{{ card.cardImg }}" alt="Health and Safety">
                                </figure>
                                <h5 class="c-grid-block__title t-h5">
                                    {{ card.cardTitle }}
                                </h5>
                                <a class="c-grid-block__link t-link" href="#">
                                    <span class="c-label">
                                        Read more
                                    </span>
                                </a>
                            </div>
                        {% endif %}
                    {% endfor %}
            </div>
        </div>
    </section>

{% endmacro %}
