{% extends "base/base.tpl" %}
{% block title %}
Sustainability
{% endblock %}
{% set menu_item = 'sustainability' %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Our approach',
            pageSubtitle='We endeavor to be a trusted corporate citizen in each of our communities.',
            bgPhoto='img-header-panel-sustainability-our-approach.jpg'
        )
    }}
{% endblock %}

{% block standfirst %}
    {% import "components/standfirst.tpl" as standfirst with context %}
    {{ standfirst.render(
        paragraph='We determine material topics and boundaries by engaging with key stakeholders, benchmarking against industry peers, and considering disclosure requirements and guidelines issues by various institutions and regulatory bodies.<br><br>We are proud to be a trusted corporate citizen dedicated to growing our business responsibly and minimizing our carbon footprint wherever possible.'
    ) }}
{% endblock %}

<section class="l-section l-section--no-offset">
    <div class="l-inner">
        {% block text_component %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                secTitle='Committed<br>to a more sustainable world',
                firstParagraph='
                <p>
                    We endeavor to be a trusted corporate citizen in each of our communities. We maintain strong ties to each community by encouraging open dialogue with local plant management and through our longstanding commitment to being a local employer. We also support the economic and social well-being of our communities through tailored social development programs.
                    <br><br>
                    Given the nature of our operations, we maintain a ‘health and safety first’ attitude at every plant. We invest heavily in the best available technologies to minimize our carbon footprint and develop cleaner products, and aim to achieve zero safety incidences across the group by continuously investing in our employees’ training and development.
                    <br><br>
                    We believe in the importance of business transparency and stakeholder engagement as a tool to effect change and sustainably grow our business. We strive to maintain an open dialogue with our stakeholders to ensure our strategy, activities, and policies are implemented responsibly, and aim to nurture our stakeholders’ trust in OCI through our interactions.
                    <br><br>
                    In addition to our direct stakeholder interactions, we are an active member of several industry associations where we work with our peers to sustainably improve global standards in our industries, and engage in dialogue on key global challenges related to our industries.
                    <br><br>
                    In addition to local memberships at the plant level, OCI’s memberships include:
                </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}
    </div>
</section>

{% block logos_slider %}
    {% import "components/logos-slider.tpl" as logos_slider with context %}
    {{ logos_slider.render() }}
{% endblock %}

<section class="l-section l-section--no-offset l-section--offset-m-only">
    <div class="l-inner">
        {% block text_component_2 %}
            {% import "components/text-component.tpl" as text_component_2 with context %}
            {{ text_component_2.render(
                firstParagraph='
                <p>
                    We believe our activities contribute to achieving the following goals, and aim to support additional goals in the future:
                </p>
                '
            ) }}
        {% endblock %}
        {% block table_list %}
            {% import "components/table-list-component.tpl" as table_list with context %}
            {{ table_list.render() }}
        {% endblock %}
    </div>
</section>

{% block lead_teaser %}
    {% import "components/lead-teaser.tpl" as lead_teaser with context %}
    {{
        lead_teaser.render(
            secTitle='Case study',
            compTitle='Making strides through local programs',
            compDesc='In the United States, we are members of The Fertilizer Institute (TFI), which spearheaded the 4R Nutrient Stewardship program.',
            btnText='Learn more',
            secImg='img-lead-teaser-01.jpg'
        )
    }}
{% endblock %}

<section class="l-section l-section--no-offset">
    <div class="l-inner">
        {% block text_component_3 %}
            {% import "components/text-component.tpl" as text_component_3 with context %}
            {{ text_component_3.render(
                secTitle='Working towards global food<br>security',
                firstParagraph='
                <p>
                    Our contribution to meeting a global challenge. We are committed to working towards global food security. Through various programs, we work with our customers around the world to maximize yields, strengthen crops, and accelerate growth to meet the world’s rising food demands. We also work to ensure our products are used in a way which safeguards health, occupational and public safety, the environment, and ensures security.
                    <br><br>
                    The world continues to face a significant challenge in ensuring a sustainable supply of food for our burgeoning global population, which is expected to reach 10 billion people by 2050. This is expected to require a doubling of food production levels, all while arable land is projected to decline by 35% by 2050.
                    <br><br>
                    With growing populations and declining resources, crop yield optimization through efficient fertilization is imperative to meet our global food needs.
                </p>
                <h3>
                    Nutrient stewardship
                </h3>
                <p>
                    OCI’s fertilizer products help achieve sustainable agriculture by providing an effective and environmentally sound source of nitrogen, the key nutrient required for crop growth and development. By using nitrogen fertilizers, farmers can:
                </p>
                <ul>
                    <li>grow more food on their land,</li>
                    <li>reduce soil nutrient loss and improve soil quality, and</li>
                    <li>reduce the need for new farmland to be sequestered, which therefore reduces greenhouse gas (GHG) emissions by limiting deforestation.</li>
                </ul>
                ',
                noPadding='true'
            ) }}
        {% endblock %}
    </div>
</section>

{% block hr %}
{% import "components/hr.tpl" as hr with context %}
{{
    hr.render(
        hasSpacing='small'
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