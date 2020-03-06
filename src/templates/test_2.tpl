{% extends "base/base.tpl" %}
{% block title %}
Test 2
{% endblock %}
{% set menu_item = 'test_2' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='Test',
            pageSubtitle='We aim to provide our investors with insightful, transparent and precise information to help aid a detailed understanding of the financial strength of our business.',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

<div class="l-section">
    <div class="l-inner">
        <div class="c-standfirst-wrapper">
            <div class="c-btn-wrapper c-btn-wrapper--modular">
                <a href="/news.html" class="c-btn c-btn--download">
                    <span class="c-label t-btn t-white t-thin">Download AR 2018</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                    <span class="c-btn__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                        </svg>
                    </span>
                </a>
                <a href="/news.html" class="c-btn c-btn--download">
                    <span class="c-label t-btn t-white t-thin">Download latest presentation</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                    <span class="c-btn__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                        </svg>
                    </span>
                </a>
                <a href="/news.html" class="c-btn c-btn--download">
                    <span class="c-label t-btn t-white t-thin">Download latest presentation</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                    <span class="c-btn__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                        </svg>
                    </span>
                </a>
                <a href="/news.html" class="c-btn c-btn--primary c-btn--medium t-btn t-white">
                    <span class="c-label">
                        Report archive
                    </span>
                </a>
            </div>
        </div>
    </div>
</div>

{% block quick_links %}
    {% import "components/quick-links.tpl" as quick_links with context %}
    {{
        quick_links.render(
            secTitle='Quick links'
        )
    }}
{% endblock %}

{% endblock %}
