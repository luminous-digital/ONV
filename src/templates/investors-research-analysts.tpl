{% extends "base/base.tpl" %}
{% block title %}
Investors - research analysts
{% endblock %}
{% set menu_item = 'investors' %}
{% set sub_menu_item = 'Research analysts' %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Research analysts',
            pageSubtitle='A number of research analysts monitor out company and issue opinions on our corporate performance',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

{% block standfirst %}
    {% import "components/standfirst.tpl" as standfirst with context %}
    {{ standfirst.render(
        paragraph='Any opinions, forecasts, or estimates published by analysts relating to OCI N.V. and its subsidiaries\' performance do not represent the opinions, forecasts, or estimates of OCI N.V. or its management.'
    ) }}
{% endblock %}

{% block contact_list %}
    {% import "components/contact-list.tpl" as contact_list with context %}
    {{
        contact_list.render(
            columnName1='Firm',
            columnName2='Name',
            columnName3='Phone',
            listCount=7,
            mapItems=[
                {
                    col1: 'Berenberg',
                    col2: 'Rikin Patel',
                    col3: '+44 203 753 30 80',
                    email: 'test_1@oci.uk'
                },
                {
                    col1: 'Citi',
                    col2: 'Thomas Wrigglesworth',
                    col3: '+44 207 98642 52',
                    email: 'test_1@oci.uk'
                },
                {
                    col1: 'Degroof Petercam',
                    col2: 'Fark Claasen',
                    col3: '+31 20 573 54 09',
                    email: 'test_3@oci.uk'
                },
                {
                    col1: 'Berenberg',
                    col2: 'Rikin Patel',
                    col3: '+44 203 753 30 80',
                    email: 'test_4@oci.uk'
                },
                {
                    col1: 'Citi',
                    col2: 'Thomas Wrigglesworth',
                    col3: '+44 207 98642 52',
                    email: 'test_5@oci.uk'
                },
                {
                    col1: 'Degroof Petercam',
                    col2: 'Fark Claasen',
                    col3: '+31 20 573 54 09',
                    email: 'test_6@oci.uk'
                },
                {
                    col1: 'Citi',
                    col2: 'Rikin Patel',
                    col3: '+44 203 753 30 80',
                    email: 'test_7@oci.uk'
                }
            ]
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
