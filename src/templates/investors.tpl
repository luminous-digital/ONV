{% extends "base/base.tpl" %}
{% block title %}
Test
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

<section class="l-hero">
    <div class="c-header-panel-wrapper" style="background-image: url('../static/img/img-header-panel-investors.jpg');">
        <div class="l-inner l-inner--90 l-inner--desktop-70">
            <div class="c-header-panel t-center">
                <h1 class="c-header-panel__title t-h1">
                    Investor centre
                </h1>
                <p class="c-header-panel__desc t-body t-body--big t-white">
                    We aim to provide our investors with insightful, transparent and precise information to help aid a detailed understanding of the financial strength of our business.
                </p>
                <div class="c-header-panel__arrow-container js-scroll-down">
                    <span class="c-header-panel__arrow">
                    </span>
                </div>
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
</section>
<div class="l-section">
    <div class="l-inner">
        <div class="c-standfirst-wrapper">
            <div class="l-inner l-inner--55">
                <p class="c-standfirst t-standfirst">
                    “Our latest results reflect the continuing step-up in the volumes from new capacity additions and productivity improvements this year and again in 2019.”
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
<section class="l-section l-section--bg-alt">
    <div class="l-inner">
        <div class="c-info-panel">
            <div class="c-info-panel__item">
                <h4 class="c-info-panel__heading t-sec-divider">
                    Next event
                </h4>
                <h3 class="c-info-panel__title t-h3">
                    24 May 2019
                </h3>
                <p class="c-info-panel__desc t-big-info">
                    Annual General Meeting  of Shareholders
                </p>
                <div class="c-btn-wrapper c-btn-wrapper--small">
                    <a href="/news.html" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                        <span class="c-label">
                            View full calendar
                        </span>
                    </a>
                </div>
            </div>
            <div class="c-info-panel__item">
                <h4 class="c-info-panel__heading t-sec-divider">
                    Share price
                </h4>
                <h3 class="c-info-panel__title t-h3">
                    24 May 2019
                </h3>
                <p class="c-info-panel__desc t-big-number">
                    €25.95
                </p>
                <div class="c-btn-wrapper c-btn-wrapper--small">
                    <a href="/news.html" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                        <span class="c-label">
                            View listing information
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="l-section l-section--no-overflow">
    <div class="c-feature-panel-wrapper">
        <div class="c-feature-panel-decor">
            <img src="./static/img/img-feature-panel-decor-leadership.jpg">
        </div>
        <div class="l-inner">
            <div class="c-feature-panel">
                <h2 class="c-feature-panel__title t-h2">
                    Leadership &  Governance
                </h2>
                <p class="c-feature-panel__content t-body">
                    The composition of the Board of Directors (Board) strives to arm OCI N.V. with leadership that is diverse in skills, experience, and background.
                </p>
                <div class="c-btn-wrapper c-btn-wrapper--left">
                    <a href="/our-operations.html" class="c-btn c-btn--medium c-btn--primary c-btn--center t-btn t-white">
                        Board profile
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="l-section">
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                Latest news
            </h4>
        </div>
    </div>
    <div class="c-latest-news-wrapper" style="background-image: url('./static/img/latest-news-bg.jpg');">
        <div class="l-inner">
            <div class="swiper-container c-latest-news-wrapper__slider js-slider-latest-news">
                <ul class="swiper-wrapper c-latest-news">
                    <li class="swiper-slide c-latest-news-card">
                        <div class="c-latest-news-card__container">
                            <p class="c-latest-news-card__date t-small t-white">
                                28 August 2018
                            </p>
                            <p class="c-latest-news-card__excerpt t-white">
                                OCI N.V. Reports Second Quarter and First Half 2018 Results
                            </p>
                            <a href="#" class="c-latest-news-card__cta t-link t-white">
                                <span class="c-label">
                                    Read more
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-latest-news-card">
                        <div class="c-latest-news-card__container">
                            <p class="c-latest-news-card__date t-small t-white">
                                28 August 2018
                            </p>
                            <p class="c-latest-news-card__excerpt t-white">
                                OCI N.V. Reports Second Quarter and First Half 2018 Results
                            </p>
                            <a href="#" class="c-latest-news-card__cta t-link t-white">
                                <span class="c-label">
                                    Read more
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-latest-news-card">
                        <div class="c-latest-news-card__container">
                            <p class="c-latest-news-card__date t-small t-white">
                                28 August 2018
                            </p>
                            <p class="c-latest-news-card__excerpt t-white">
                                OCI N.V. Reports Second Quarter and First Half 2018 Results
                            </p>
                            <a href="#" class="c-latest-news-card__cta t-link t-white">
                                <span class="c-label">
                                    Read more
                                </span>
                            </a>
                        </div>
                    </li>
                </ul>
                <div class="c-latest-news-wrapper__prev js-slider-latest-news-prev">
                </div>
                <div class="c-latest-news-wrapper__next js-slider-latest-news-next">
                </div>
            </div>
            <div class="c-btn-wrapper">
                <a href="/news.html" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                    All news
                </a>
            </div>
        </div>
    </div>
</section>
<section class="l-section l-section--no-overflow">
    <div class="c-feature-panel-wrapper">
        <div class="c-feature-panel-decor">
            <img src="./static/img/img-feature-panel-decor-sustainability-2.jpg">
        </div>
        <div class="l-inner">
            <div class="c-feature-panel">
                <h2 class="c-feature-panel__title t-h2">
                    Sustainability
                </h2>
                <p class="c-feature-panel__content t-body">
                    Our position as an industry leader gives us the opportunity to encourage sustainable practices.
                </p>
                <div class="c-btn-wrapper c-btn-wrapper--left">
                    <a href="/our-operations.html" class="c-btn c-btn--medium c-btn--primary c-btn--center t-btn t-white">
                        Sustainability
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="l-section">
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                {{ secTitle }}
            </h4>
        </div>
    </div>
    <div class="l-inner">
        <div class="c-contacts">
            <h3 class="c-contacts__title t-h3 t-center">
                {{ firstTitle }}
            </h3>
            <p class="c-contacts__content t-body t-center">
                {{ firstContent | safe }}
            </p>
            <h3 class="c-contacts__title t-h3 t-center">
                {{ secondTitle }}
            </h3>
            <p class="c-contacts__content t-body t-center">
                {{ secondContent | safe }}
            </p>
        </div>
    </div>
</section>
<section class="l-section">
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                Quick links
            </h4>
        </div>
    </div>
    <div class="c-quick-links-wrapper">
        <div class="l-inner">
            <div class="swiper-container c-quick-links-wrapper__slider js-slider-quick-links">
                <ul class="swiper-wrapper c-quick-links">
                    <li class="swiper-slide c-quick-links-card">
                        <div class="c-quick-links-card__container">
                            <h5 class="c-quick-links-card__date t-h5">
                                About us
                            </h5>
                            <figure class="c-quick-links-card__decor js-object-fit">
                                <img src="./static/img/quick-links-fig.jpg">
                            </figure>
                            <p class="c-quick-links-card__excerpt t-body">
                                OCI is a leading global nitrogen fertilizer producer with over 9.6 million metric tons of capacity…
                            </p>
                            <a href="#" class="c-quick-links-card__cta t-link">
                                <span class="c-label">
                                    About us
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-quick-links-card">
                        <div class="c-quick-links-card__container">
                            <h5 class="c-quick-links-card__date t-h5">
                                Sustainability
                            </h5>
                            <figure class="c-quick-links-card__decor js-object-fit">
                                <img src="./static/img/quick-links-fig-01.jpg">
                            </figure>
                            <p class="c-quick-links-card__excerpt t-body">
                                Our position as an industry leader gives us the opportunity to encourage sustainable practices…
                            </p>
                            <a href="#" class="c-quick-links-card__cta t-link">
                                <span class="c-label">
                                    Sustainability
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-quick-links-card">
                        <div class="c-quick-links-card__container">
                            <h5 class="c-quick-links-card__date t-h5">
                                Investor proposition
                            </h5>
                            <figure class="c-quick-links-card__decor js-object-fit">
                                <img src="./static/img/quick-links-fig-02.jpg">
                            </figure>
                            <p class="c-quick-links-card__excerpt t-body">
                                A strong appetite for investment and diversification to grow our business and create outstanding returns to shareholders…
                            </p>
                            <a href="#" class="c-quick-links-card__cta t-link">
                                <span class="c-label">
                                    Investors
                                </span>
                            </a>
                        </div>
                    </li>
                </ul>
                <div class="c-quick-links-wrapper__prev js-slider-quick-links-prev">
                </div>
                <div class="c-quick-links-wrapper__next js-slider-quick-links-next">
                </div>
            </div>
        </div>
    </div>
</section>

{% endblock %}
