{% extends "base/base.tpl" %}
{% block title %}
    Homepage
{% endblock %}
{% block content %}

<div class="l-inner">
    <div class="l-main__head">
        <div class="l-main__head__title">
            <h2>Page Content</h2>
            <a class="t-link">
                <span class="c-label">
                    Label
                </span>
            </a>
        </div>
    </div>
    <div class="l-main__content">
        {% include "components/main-nav.tpl" %}
    </div>
</div>
{% endblock %}
