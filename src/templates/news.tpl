{% extends "base/base.tpl" %}
{% block title %}
News
{% endblock %}
{% set menu_item = 'news' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='News',
            pageSubtitle='Latest news as well as a full archive of press releases available from January 2013.',
            bgPhoto='news-bg.jpg'
        )
    }}
{% endblock %}

{% block latest_news %}
    {% import "components/latest-news.tpl" as latest_news with context %}
    {{ latest_news.render() }}
{% endblock %}

{% block all_news %}
    {% import "components/all-news.tpl" as all_news with context %}
    {{ all_news.render() }}
{% endblock %}

{% block hr %}
{% import "components/hr.tpl" as hr with context %}
{{
    hr.render(
        hasSpacing='medium'
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
