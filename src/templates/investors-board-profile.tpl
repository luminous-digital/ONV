{% extends "base/base.tpl" %}
{% block title %}
Investors - board profile
{% endblock %}
{% set menu_item = 'investors' %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Board profile',
            pageSubtitle='The composition of the Board of Directors (Board) strives to arm OCI N.V. with leadership that is diverse in skills, experience, and background.',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

{# {% block board_structure %}
    {% import "components/board-structure.tpl" as board_structure with context %}
    {{
        board_structure.render()
    }}
{% endblock %} #}

[ board structure ]

{% block card_grid %}
    {% import "components/card-grid.tpl" as card_grid with context %}
    {{
        card_grid.render(
            perRow='3',
            count='9',
            type='people'
        )
    }}
{% endblock %}

{% block hr %}
{% import "components/hr.tpl" as hr with context %}
{{
    hr.render(
        hasSpacing='true'
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

{% block people_modal %}
    {% import "components/people-modal.tpl" as people_modal with context %}
    {{ people_modal.render() }}
{% endblock %}

{% endblock %}
