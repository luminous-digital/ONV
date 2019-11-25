{% macro render(secTitle, compTitle, perRow, count, type) %}

{% if type === 'stories' %}
    {% set cards = [
        {
            cardImg: './static/img/key-areas/img-health-safety.jpg',
            cardTitle: 'Supporting local STEM programmes'
        },
        {
            cardImg: './static/img/latest-news-bg.jpg',
            cardTitle: 'OCI Nitrogen Awarded “Best Training Company 2018”'
        },
        {
            cardImg: './static/img/people-card-img-01.jpg',
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
{% else %}
    {% set cards = [
        {
            cardImg: './static/img/people-card-img-01.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-02.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-03.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-01.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-02.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-03.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-02.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-01.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        },
        {
            cardImg: './static/img/people-card-img-03.jpg',
            cardTitle: 'Michael Bennett',
            cardSubtitle: 'Independent Non-Executive Director and Chairman',
            cardDesc:
            'Michael Bennett has 36 years’ experience in the nitrogen industry and is a past Chairman of both The Fertilizer Institute and the Methanol Institute in the United States. He served as the Chief Executive Officer and a Director of Terra Industries Inc., a producer of nitrogen fertilizer products, from 2001 until its acquisition by CF Industries Holdings in April 2010. He also served as Chairman and President for Terra Nitrogen Company, L.P., a publicly listed subsidiary of Terra Industries Inc. Mr. Bennett currently serves as a Director of Alliant Energy Corporation, and SandRidge Energy, as well as the Chairman of the Board at Morningside College in Sioux City, Iowa.
            <br><br>
            Born in 1953 and is a United States citizen.
            <br><br>
            Appointed: 25 January 2013.'
        }
    ] %}
{% endif %}


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
            {% if compTitle %}
                <h2 class="c-section-title t-h2">
                    {{ compTitle | safe }}
                </h2>
            {% endif %}
            <div class="c-grid-wrapper c-grid-wrapper--{{ mod }}">
                {% for card in cards %}
                    {% if loop.index < count %}
                        <div
                            class="c-grid-block{% if loop.index > count - perRow %} c-grid-block--no-offset{% endif %}">
                            <figure class="c-grid-block__image">
                                <img src="{{ card.cardImg }}" class="js-object-fit" alt="Health and Safety">
                            </figure>
                            <h5 class="c-grid-block__title t-h5">
                                {{ card.cardTitle }}
                            </h5>
                            {% if card.cardSubtitle %}
                                <p class="c-grid-block__subtitle t-body">
                                    {{ card.cardSubtitle }}
                                </p>
                            {% endif %}
                            {% if card.cardDesc %}
                                <p class="c-grid-block__hidden-desc">
                                    {{ card.cardDesc }}
                                </p>
                            {% endif %}
                            <a class="c-grid-block__link t-link {% if type == 'people' %}js-people-modal-toggle{% endif %}" href="#">
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
