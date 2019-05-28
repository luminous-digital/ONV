{% extends "base/base.tpl" %}
{% extends "base/base.tpl" %}
{% block title %}
Test
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

<section class="l-section">
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                Focused on sustainability
            </h4>
        </div>
    </div>
    <div class="c-lead-teaser-wrapper" style="background-image: url('../static/img/img-lead-teaser.jpg');">
        <div class="l-inner l-inner--90 l-inner--desktop-70">
            <div class="c-lead-teaser t-center">
                <h2 class="c-lead-teaser__title t-h1">
                    Our committment
                </h2>
                <p class="c-lead-teaser__desc t-body t-body--big t-white">
                    “We believe our position as a leading nitrogen fertilizer  and industrial chemicals company gives us the opportunity  to encourage sustainable practices in our industries  and communities.”
                </p>
                <div class="c-btn-wrapper c-btn-wrapper--small">
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
