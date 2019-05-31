{% extends "base/base.tpl" %}
{% block title %}
Investors
{% endblock %}
{% set menu_item = 'investors' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='Investor centre',
            pageSubtitle='We aim to provide our investors with insightful, transparent and precise information to help aid a detailed understanding of the financial strength of our business.',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

<div class="l-section">
    <div class="l-inner">
        <div class="c-standfirst-wrapper">
            <div class="l-inner l-inner--55">
                <p class="c-standfirst t-standfirst">
                    "Our latest results reflect the continuing step-up in the volumes from new capacity additions and productivity improvements this year and again in 2019."
                </p>
                <p class="c-standfirst-desc c-standfirst-desc--small-padding t-body t-center">
                    <span class="t-bold">Nassef Sawiris,</span> Chief Executive Officer
                </p>
            </div>
            <div class="c-btn-wrapper c-btn-wrapper--equal-btns c-btn-wrapper--three-btns">
                <a href="/news.html" class="c-btn c-btn--download c-btn--icon-centered c-btn--block">
                    <span class="c-label t-btn t-white t-thin">Download AR 2018</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                    <span class="c-btn__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                        </svg>
                    </span>
                </a>
                <a href="/news.html" class="c-btn c-btn--download c-btn--icon-centered c-btn--block">
                    <span class="c-label t-btn t-white t-thin">Download latest presentation</span>
                    <span class="c-sub-label t-btn t-btn--small t-white">PDF 0.5MB</span>
                    <span class="c-btn__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                        </svg>
                    </span>
                </a>
                <a href="/news.html" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                    <span class="c-label">
                        Report archive
                    </span>
                </a>
            </div>
        </div>
    </div>
</div>

{% block info_panel %}
    {% import "components/info-panel.tpl" as info_panel with context %}
    {{
        info_panel.render(
            sectionTitle='Latest news'
        )
    }}
{% endblock %}

{% block feature_panel2 %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{
        feature_panel.render(
            compTitle='Leadership &amp; Governance',
            compContent='The composition of the Board of Directors (Board) strives to arm OCI N.V. with leadership that is diverse in skills, experience, and background.',
            compBtnTitle='Board profile',
            compBgSrc='img-feature-panel-decor-leadership.jpg'
        )
    }}
{% endblock %}

{% block latest_news %}
    {% import "components/latest-news.tpl" as latest_news with context %}
    {{
        latest_news.render(
            sectionTitle='Latest news'
        )
    }}
{% endblock %}

{% block feature_panel %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{
        feature_panel.render(
            compTitle='Sustainability',
            compContent='Our position as an industry leader gives us the opportunity to encourage sustainable practices.',
            compBtnTitle='Sustainability',
            compBgSrc='img-feature-panel-decor-sustainability-2.jpg'
        )
    }}
{% endblock %}

{% block contacts %}
    {% import "components/contacts.tpl" as contacts with context %}
    {{
        contacts.render(
            secTitle='IR CONTACT',
            firstTitle='For OCI N.V. investor relations or media enquiries, please contact:',
            firstContent='Hans Zayed',
            secondTitle='IR Director',
            secondContent='E: hans.zayed@oci.nl T: (+31) 06 18 25 13 67'
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
