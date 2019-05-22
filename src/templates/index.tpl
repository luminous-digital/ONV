{% extends "base/base.tpl" %}
{% block title %}
Homepage
{% endblock %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='Global outlook, local focus',
            pageSubtitle='We are a global producer and distributor of natural gas-based fertilizers and industrial chemicals with excellent diversification across products and geographies.',
            bgPhoto='img-header-panel-1.jpg'
        )
    }}
{% endblock %}

{% block latest_news %}
    {% import "components/latest-news.tpl" as latest_news with context %}
    {{
        latest_news.render(
            isFirstSection='true'
        )
    }}
{% endblock %}

{% block feature_panel %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{
        feature_panel.render(
            compTitle='Our operational strength',
            compContent='Our competitive strengths lie in our high quality production facilities, our global low cost producer advantage, our diversified product portfolio, and our strategic locations with access to strong distribution and logistics capabilities.',
            compBtnTitle='Our operations',
            compBgSrc='feature-panel-decor.jpg'
        )
    }}
{% endblock %}

{% block quick_links %}
    {% import "components/quick-links.tpl" as quick_links with context %}
    {{
        quick_links.render(
            secTitle='Quick links'
        )
    }}
{% endblock %}

{% endblock %}