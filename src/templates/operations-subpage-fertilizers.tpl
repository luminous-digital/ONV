{% extends "base/base.tpl" %}
{% block title %}
Operations subpage
{% endblock %}
{% set menu_item = 'operations' %}
{% set sub_menu_item = 'Egyptian Fertilizers Company' %}
{% block content %}

{% block header_panel_short %}
{% import "components/header-panel-short.tpl" as header_panel_short with context %}
{{
        header_panel_short.render(
            pageTitle='Operations subpage',
            pageSubtitle='Our competitive strengths lie in our high quality production assets, our global low cost advantage, and our strategic locations with access to strong distribution and logistics capabilities',
            bgPhoto='img-header-panel-operations-nitrogen.jpg'
        )
    }}
{% endblock %}

{% block standfirst %}
{% import "components/standfirst.tpl" as standfirst with context %}
{{ standfirst.render(
        paragraph='Capable of producing over 2 million metric tons of sellable fertilizer and chemicals products annually through nine interconnected plants located on a fully integrated production site in Geleen, the Netherlands.'
    ) }}
{% endblock %}

{% block data_slider %}
{% import "components/data-slider.tpl" as data_slider with context %}
{{ data_slider.render(
        secTitle='Annual production capacity'
    ) }}
{% endblock %}

<section class="l-section">
    <div class="l-inner">
        {% block text_component %}
        {% import "components/text-component.tpl" as text_component with context %}
        {{ text_component.render(
                secTitle='World-class production complex',
                firstParagraph='
                <p>
                    All of OCI Nitrogen’s plants utilize efficient technology from proven global technology providers coupled with proprietary nitric acid and melamine proven technology.
                    <br><br>
                    Since our acquisition of the OCI Nitrogen assets from Royal DSM B.V. in 2010, we have fully revamped the facilities through a five-year capital expenditure program launched to upgrade the complex to its current state. As a result of this maintenance and replacement program, OCI Nitrogen is a world-class production complex performing at excellent utilization, reliability and efficiency and emissions rates. OCI Nitrogen consistently ranks amongst the top plants globally in terms of energy efficiency.
                    <br><br>
                    The capital investment program also added nearly 500 thousand metric tons of production capacity through various improvement and debottlenecking initiatives of OCI Nitrogen’s CAN, UAN and melamine plants.
                    <br><br>
                </p>
                <h3>
                    2018 sales by region
                </h3>
                <img src="./static/img/content-img-01.png" alt="2018 sales by region" />
                '
            ) }}
        {% endblock %}
        {% block text_component_2 %}
        {% import "components/text-component.tpl" as text_component_2 with context %}
        {{ text_component_2.render(
                secTitle='Diversified product portfolio',
                firstParagraph='
                <p>
                    As Europe’s second largest CAN producer and the world’s largest melamine producer, OCI Nitrogen benefits from excellent brand recognition with owned trade names including Nutramon®, Exacote®, and Melafine®. Its diversified product portfolio, which includes ammonia, CAN, UAN and melamine, is fully flexible, allowing us to maximize production of certain swing products depending on global supply and demand.
                </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}
        {% block quote %}
        {% import "components/text-quote.tpl" as quote with context %}
        {{ quote.render(
                quote='OCI Nitrogen is a world-class production complex performing at excellent utilization, reliability and efficiency and emissions rates.'
            ) }}
        {% endblock %}
        {% block text_component_3 %}
        {% import "components/text-component.tpl" as text_component_3 with context %}
        {{ text_component_3.render(
                secTitle='Strategic location with strong distribution and logistics',
                firstParagraph='
                <p>
                    OCI Nitrogen has developed a comprehensive and highly efficient distribution and logistics network through pipeline, road, rail and shipping, with access to both Stein harbor and Rotterdam port.
                    <br><br>
                    The majority of OCI Nitrogen’s product is distributed out of Stein harbor through dedicated CAN and AS barge loaders and a direct pipeline connection to the plant’s ammonia and UAN lines. Access to Stein harbour allows OCI Nitrogen to streamline its import/export activities and ensures supply security in the event of unplanned downtime. As one of the largest inland ports in the Netherlands, Stein harbor provides links to the seaports of Rotterdam, Terneuzen, Antwerp and Ghent as well as efficient river connections to Belgium, France, Netherlands and Germany.
                    <br><br>
                    OCI Nitrogen’s distribution infrastructure also includes OCI Terminal Europoort (OTE), an ammonia terminal at Rotterdam port. OTE consists of two ammonia tanks of 15 thousand metric ton capacity each, protected by a surrounding concrete wall. OTE is capable of receiving up to 0.55 million metric tons per year (mtpa) of ammonia and delivering up to 0.45 mtpa. Access to Rotterdam port through OTE also allows our wholly owned distribution arm, OCI Fertilizer Trade and Supply (OFTS), to trade third party ammonia around the world.
                    <br><br>
                    OCI Nitrogen is also able to distribute ammonia by rail. Our leased rail tank car (RTC) fleet in Geleen consists of approximately 250 RTCs, and is the largest ammonia RTC fleet in Europe. Fertilizers and melamine are also trucked across Europe, supported by access to warehousing capacity around Europe of nearly 650 thousand metric tons.
                    <br><br>
                    <a href="http://www.ocinitrogen.com">www.ocinitrogen.com</a>
                </p>
        ',
        noPadding='true'
        ) }}
        {% endblock %}

    </div>
</section>
<section class="l-section">
    <div class="l-inner">
        {% import "components/video-module.tpl" as c_video %}
        {{ c_video.render(videoUrl='https://www.youtube.com/embed/dQw4w9WgXcQ') }}
    </div>
</section>

{% block feature_panel %}
{% import "components/feature-panel.tpl" as feature_panel with context %}
{{
        feature_panel.render(
            compTitle='Find your future career with OCI Nitrogen',
            compContent='As part of a wider global network our successes are thanks to our clear vision, maintained values, and our people. Our dedicated team of employees are the best in their fields and we aim to give our people the best environments to work in. Discover outstanding job and career opportunities with OCI Nitrogen.',
            compBtnTitle='View openings',
            compBgSrc='feature-panel-decor-02.jpg'
        )
    }}
{% endblock %}

{% block quick_links %}
{% import "components/quick-links.tpl" as quick_links with context %}
{{
        quick_links.render(
            secTitle='Related links'
        )
    }}
{% endblock %}

{% endblock %}
