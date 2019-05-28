{% extends "base/base.tpl" %}
{% extends "base/base.tpl" %}
{% block title %}
Test
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

<section class="l-section">
    <div class="l-inner">
        <div class="c-section-divider">
            <div class="l-inner">
                <h4 class="c-section-divider__title t-sec-divider">
                    Focused on sustainability
                </h4>
            </div>
        </div>
        <div class="c-header-panel-wrapper" style="background-image: url('../static/img/img-lead-teaser.jpg');">
            <div class="l-inner l-inner--90 l-inner--desktop-70">
                <div class="c-header-panel c-header-panel--teaser t-center">
                    <h1 class="c-header-panel__title t-h1">
                        Our committment
                    </h1>
                    <p class="c-header-panel__desc t-body t-body--big t-white">
                        We believe our position as a leading nitrogen fertilizer industrial chemicals company gives us the opportunity
                    </p>
                    <a href="/" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                        <span class="c-label">
                           Our stories
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

{% endblock %}
