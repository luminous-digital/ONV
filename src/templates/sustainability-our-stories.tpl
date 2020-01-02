{% extends "base/base.tpl" %}
{% block title %}
Sustainability - our stories
{% endblock %}
{% set menu_item = 'sustainability' %}
{% set sub_menu_item = 'Our stories' %}
{% block content %}

    {% block header_panel_short %}
        {% import "components/header-panel-short.tpl" as header_panel_short with context %}
        {{
            header_panel_short.render(
                pageTitle='Our stories',
                pageSubtitle='"We believe our position as a leading nitrogen fertilizer and industrial chemicals company gives us the opportunity to encourage sustainable practices in our industries and communities."',
                bgPhoto='img-header-panel-our-stories.jpg',
                noGradient='true'
            )
        }}
    {% endblock %}

    {% block card_grid %}
        {% import "components/card-grid.tpl" as card_grid with context %}
        {{
            card_grid.render(
                perRow='3',
                count='9',
                type='stories'
            )
        }}
    {% endblock %}

{% endblock %}
