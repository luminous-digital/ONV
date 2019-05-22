{% extends "base/base.tpl" %}
{% block title %}
About
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='About OCI',
            pageSubtitle='Based in the Netherlands, OCI NV comprises a collection of well-invested, strategically placed businesses, each of which benefits from the Group’s financial strength and global reach.',
            bgPhoto='img-header-panel-2.jpg'
        )
    }}
{% endblock %}

{% block standfirst %}
    {% import "components/standfirst.tpl" as standfirst with context %}
    {{ standfirst.render(
        firstParagraph='OCI produces nitrogen fertilizers, methanol and other natural gas based products, serving agricultural and industrial customers from the Americas to Asia. OCI is a leading global nitrogen fertilizer producer with over 9.6 million metric tons of capacity. OCI is also on track to become one of the world’s largest methanol producers with almost 3.7 million tons of capacity.',
        secondParagraph='OCI N.V. employs approximately 3,000 people and is listed on the NYSE Euronext in Amsterdam under the symbol “OCI”.'
    ) }}
{% endblock %}

{% block our_history %}
    {% import "components/our-history.tpl" as our_history with context %}
    {{ our_history.render() }}
{% endblock %}

{#
{% block feature_panel %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{ feature_panel.render() }}
{% endblock %}

{% block quick_links %}
    {% import "components/quick-links.tpl" as quick_links with context %}
    {{ quick_links.render() }}
{% endblock %} #}

{% endblock %}