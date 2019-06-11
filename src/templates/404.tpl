{% extends "base/base.tpl" %}
{% block title %}
404
{% endblock %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='Error 404',
            pageSubtitle='Unfortunately, we have not been able to find what you were looking for, so to help guide you where you need to be, below you will find links to some of our most popular content - alternatively, you can try the search function above.',
            bgPhoto='img-header-panel-4.jpg'
        )
    }}
{% endblock %}

{% block quick_links %}
    {% import "components/quick-links.tpl" as quick_links with context %}
    {{
        quick_links.render(
            secTitle='Popular Links'
        )
    }}
{% endblock %}

{% endblock %}
