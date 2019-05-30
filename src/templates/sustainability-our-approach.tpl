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

<section class="l-section l-section--no-offset">
    <div class="l-inner">
        {% block text_component_2 %}
            {% import "components/text-component.tpl" as text_component_2 with context %}
            {{ text_component_2.render(
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

{% block feature_panel %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{
        feature_panel.render(
            compTitle='Committed to a more sustainable world',
            compContent='We endeavor to be a trusted corporate citizen in each of our communities.',
            compBtnTitle='Our approach',
            compBgSrc='feature-panel-decor-sustainability.jpg'
        )
    }}
{% endblock %}

{% block four_key_areas %}
    {% import "components/four-key-areas.tpl" as four_key_areas with context %}
    {{ four_key_areas.render() }}
{% endblock %}

{% block lead_teaser %}
    {% import "components/lead-teaser.tpl" as lead_teaser with context %}
    {{
        lead_teaser.render(
            secTitle='Focused on sustainability',
            compTitle='Our committment',
            compDesc='"We believe our position as a leading nitrogen fertilizer and industrial chemicals company gives us the opportunity to encourage sustainable practices in our industries and communities."',
            btnText='Our stories'
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