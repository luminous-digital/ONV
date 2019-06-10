{% extends "base/base.tpl" %}
{% block title %}
Investors - results and presentations
{% endblock %}
{% set menu_item = 'investors' %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Investor relations calendar',
            pageSubtitle='OCI N.V.\'s upcoming corporate events',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

{% block file_list_1 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            secTitle='Upcoming<br>events',
            listCount='2'
        )
    }}
{% endblock %}

{% block file_list_2 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            secTitle='Past<br>events',
            listCount='4',
            showShowMore=true,
            showSubtitles=true
        )
    }}
{% endblock %}

{% block file_list_3 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            listCount='4',
            showShowMore=true,
            showSubtitles=true
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

{% endblock %}
