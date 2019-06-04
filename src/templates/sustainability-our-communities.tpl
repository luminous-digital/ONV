{% extends "base/base.tpl" %}
{% block title %}
Sustainability - our communities
{% endblock %}
{% set menu_item = 'sustainability' %}
{% set page_title = 'Our communities' %}
{% block content %}

    {% block header_panel_short %}
        {% import "components/header-panel-short.tpl" as header_panel_short with context %}
        {{
            header_panel_short.render(
                pageTitle=page_title,
                pageSubtitle='We are committed to working towards global food security.',
                bgPhoto='img-header-panel-sustainability-our-approach.jpg'
            )
        }}
    {% endblock %}

    <section class="l-section l-section--header">
        <div class="c-section-divider c-section-divider--nopadding">
            <div class="l-inner">
                <h4 class="c-section-divider__title t-sec-divider">
                    Our four focus areas
                </h4>
            </div>
        </div>
        <div class="l-inner">
            {% block content_tabs %}
                {% import "components/sustainability-content-tabs.tpl" as content_tabs with context %}
                {{ content_tabs.render() }}
            {% endblock %}
        </div>
    </section>

    {% block standfirst %}
        {% import "components/standfirst.tpl" as standfirst with context %}
        {{ standfirst.render(
            paragraph='Through various programs, we work with our customers around the world to maximize yields, strengthen crops, and accelerate growth to meet the world’s rising food demands. We also work to ensure our products are used in a way which safeguards health, occupational and public safety, the environment, and ensures security.'
        ) }}
    {% endblock %}

    <section class="l-section l-section--padded">
        <div class="l-inner">
            {% block text_component %}
                {% import "components/text-component.tpl" as text_component with context %}
                {{ text_component.render(
                    secTitle='Achieving food security through promoting nutrient stewardship',
                    firstParagraph='
                    <h3>
                        Farmer education
                    </h3>
                    <p>
                        While nitrogen fertilizers offer a sustainable means of maximizing yields, farmer education is essential to ensure nitrogen fertilizer application is optimized for both production and environmental protection. OCI works with farmers around the world through various initiatives to achieve this goal.
                    </p>
                    <h3>
                        Developing more effective fertilizers
                    </h3>
                    <p>
                        We have dedicated resources to develop reliable fertilizers with superior spreading and fertigation properties. Our products are environmentally friendly and provide optimal crop nutrition due to their quality, resulting in lower nitrogen loss and increased crop yields.
                        <br><br>
                        Our fertilizers are produced to meet the highest physical quality standards to ensure optimal spreading efficiency, which in turn:
                    </p>
                    <ul>
                        <li>minimizes yield losses,</li>
                        <li>minimizes soil nutrient loss,</li>
                        <li>minimizes other impacts on the environment such as water run-off due</li>
                        <li>to optimal fertilizer application</li>
                    </ul>
                    <p>
                        Our granulated products, such as urea and CAN, are perfectly round and robust, making them easy to spread evenly for optimal results. Our aqueous fertilizers, primarily UAN, can be applied with fertigation and crop protection systems.
                        <br><br>
                        We have invested in research and technology to develop innovative products, such as Exacote, a range of coated fertilizer blends of urea, CAN and AS specifically formulated for a wide range of crops and nutrient requirements.
                    </p>
                    '
                ) }}
            {% endblock %}
        </div>
    </section>

    {% block lead_teaser %}
        {% import "components/lead-teaser.tpl" as lead_teaser with context %}
        {{
            lead_teaser.render(
                secTitle='Case study',
                compTitle='Supporting local<br>STEM programmes',
                compDesc='We believe that the key to encouraging tangible improvements our communities is a high-quality, well-rounded education that promotes critical thinking and entrepreneurship.',
                btnText='Learn more',
                btnUrl='/sustainability-case-study.html',
                secImg='img-lead-teaser-02.jpg'
            )
        }}
    {% endblock %}

    <section class="l-section">
        <div class="l-inner">
            {% block text_component_2 %}
                {% import "components/text-component.tpl" as text_component_2 with context %}
                {{ text_component_2.render(
                    secTitle='Product<br>stewardship',
                    firstParagraph='
                    <p>
                        Product stewardship ensures that our products and their raw materials, additives and intermediate products are processed and manufactured, handled, stored, distributed and used in a way which safeguards health, occupational and public safety, the environment, and ensures security.
                        <br><br>
                        We use the best available technologies to minimize our carbon footprint, and implement the Product Stewardship guidelines developed by Fertilizers Europe throughout our production processes to monitor and minimize our environmental, health and safety impact from feedstock to farmer.
                        <br><br>
                        We comply with international standards as members of the International Fertilizer Association, Fertilizers Europe (formerly EFMA), The Fertilizer Institute (TFI), and the International Methanol Producers & Consumers Association (IMPCA), among others.
                    </p>
                    '
                ) }}
            {% endblock %}
            {% block text_component_3 %}
                {% import "components/text-component.tpl" as text_component_3 with context %}
                {{ text_component_3.render(
                    secTitle='Responsible<br>supply chain',
                    firstParagraph='
                    <p>
                        OCI promotes sustainable agriculture and nutrient stewardship through its supply chain, which begins with sourcing natural gas and ends at our agricultural and industrial customers. We work diligently to promote best practices across our supply chain and ensure every aspect of our business operates optimally.
                    </p>
                    <img src="./static/img/img-content-01.png" alt=""Responsible supply chain />
                    '
                ) }}
            {% endblock %}
        </div>
    </section>

    {% block quick_links %}
        {% import "components/quick-links.tpl" as quick_links with context %}
        {{
            quick_links.render(
                secTitle='Related links'
            )
        }}
    {% endblock %}


{% endblock %}