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
            pageTitle='Results and presentations',
            pageSubtitle='A full archive of our financial reports and investor presentations.',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

{% block image_content %}
    {% import "components/image-content.tpl" as image_content with context %}
    {{
        image_content.render(
            sectionTitle='Latest reports',
            sectionContent='OCI is also on track to become one of the world’s largest methanol producers with almost 3.7 million tons of capacity.',
            sectionImg='img-reports.jpg',
            btnFirst='true',
            btnSecond='false'
        )
    }}
{% endblock %}

{% block file_list_1 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            secTitle='Report<br>archive',
            showSubtitles=true,
            listCount='20',
            showDownload=true,
            showShowMore=true,
            initialCount='4'
        )
    }}
{% endblock %}

{% block file_list_2 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            showSubtitles=true,
            listCount='20',
            showDownload=true,
            showShowMore=true,
            initialCount='4'
        )
    }}
{% endblock %}

{% block file_list_3 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            showSubtitles=true,
            listCount='20',
            showDownload=true,
            showShowMore=true,
            initialCount='4'
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
