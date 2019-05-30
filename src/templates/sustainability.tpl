{% extends "base/base.tpl" %}
{% block title %}
Sustainability
{% endblock %}
{% set menu_item = 'sustainability' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='Sustainability',
            pageSubtitle='We seek to create a sustainable environment in which we can create value for our communities, our customers, our employes and our shareholders.',
            bgPhoto='img-header-panel-sustainability.jpg'
        )
    }}
{% endblock %}

{% block standfirst %}
    {% import "components/standfirst.tpl" as standfirst with context %}
    {{ standfirst.render(
        paragraph='“We believe our position as a leading nitrogen fertilizer and industrial chemicals company gives us the opportunity to encourage sustainable practices in our industries and communities. Our nitrogen fertilizer products will be farmers’ main tool to increase crop yields, and our industrial chemicals portfolio includes methanol, bio-methanol, and diesel exhaust fluid, each of which plays an increasingly important role in developing cleaner fuels.”',
        desc='<strong>Michael Bennett</strong>, Independent Non-Executive Director and Chairman'
    ) }}
{% endblock %}

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
            btnText='Our stories',
            secImg='img-lead-teaser.jpg'
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