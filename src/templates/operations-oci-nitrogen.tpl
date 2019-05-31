{% extends "base/base.tpl" %}
{% block title %}
Operations - OCI Nitrogen
{% endblock %}
{% set menu_item = 'operations' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='OCI Nitrogen',
            pageSubtitle='Our competitive strengths lie in our high quality production assets, our global low cost advantage, and our strategic locations with access to strong distribution and logistics capabilities',
            bgPhoto='img-header-panel-operations.jpg'
        )
    }}
{% endblock %}

{% block tabbed_content %}
    {% import "components/tabbed-content.tpl" as tabbed_content with context %}
    {{ tabbed_content.render() }}
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