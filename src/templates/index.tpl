{% extends "base/base.tpl" %}
{% block title %}
Homepage
{% endblock %}
{% block content %}

<div class="l-section">
    <div class="c-header-panel-wrapper" style="background-image: url('../static/img/img-header-panel-1.jpg');">
        <div class="l-inner l-inner--90 l-inner--desktop-70">
            <div class="c-header-panel t-center">
                <h1 class="c-header-panel__title t-h1">
                    Global outlook, local focus
                </h1>
                <p class="c-header-panel__desc t-body t-body--big t-white">
                    We are a global producer and distributor of natural gas-based fertilizers and industrial chemicals with excellent diversification across products and geographies.
                </p>
                <a class="c-header-panel__arrow-container" href="#latest-news">
                    <span class="c-header-panel__arrow">
                    </span>
                </a>
                <ul class="c-header-panel-tabs">
                    <li class="c-header-panel-tab t-center">
                        <a href="#" class="c-link">
                            <div class="c-header-panel-tab__content">
                                <p class="c-header-panel-tab__title t-body t-body--alt">Share price <span class="t-bold">&euro;25.95</span></p>
                                <p class="c-header-panel-tab__subtitle t-smaller t-blue">12:23 – 20 Aug 2018</p>
                            </div>
                            <div class="c-header-panel-tab__hover">
                                <p class="c-header-panel-tab__hover-text t-body t-body--alt t-white">
                                    View listing information
                                </p>
                                <span class="c-header-panel-tab__hover-icon">
                                    <img src="./static/img/icon-arrow.svg" alt="View listing information" />
                                </span>
                            </div>
                        </a>
                    </li>
                    <li class="c-header-panel-tab c-header-panel-tab--alt t-center">
                        <a href="#" class="c-link">
                            <div class="c-header-panel-tab__content">
                                <p class="c-header-panel-tab__title t-body t-body--alt"><span class="t-bold">OCI</span> At a Glance</p>
                                <p class="c-header-panel-tab__subtitle t-smaller t-blue">PDF 5.6 MB</p>
                            </div>
                            <div class="c-header-panel-tab__hover">
                                <p class="c-header-panel-tab__hover-text t-body t-body--alt t-white">
                                    Download
                                </p>
                                <span class="c-header-panel-tab__hover-icon">
                                    <img src="./static/img/icon-download.svg" alt="View listing information" />
                                </span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

{% endblock %}