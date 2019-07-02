{% extends "base/base.tpl" %}
{% block title %}
Test
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

<section class="l-section">
    <div class="l-inner">
        <br><br>
    </div>
</section>

{% block accordion %}
    {% import "components/accordions.tpl" as accordion with context %}
    {{ accordion.render() }}
{% endblock %}

{% endblock %}
