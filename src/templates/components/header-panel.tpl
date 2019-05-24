{% macro render(pageTitle, pageSubtitle, bgPhoto) %}

<div class="l-hero">
    <div class="c-header-panel-wrapper" style="background-image: url('../static/img/{{ bgPhoto }}');">
        <div class="l-inner l-inner--90 l-inner--desktop-70">
            <div class="c-header-panel t-center">
                <h1 class="c-header-panel__title t-h1">
                    {{ pageTitle }}
                </h1>
                <p class="c-header-panel__desc t-body t-body--big t-white">
                    {{ pageSubtitle }}
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
                                    <svg class="o-svg">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#arrow"></use>
                                    </svg>
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
                                    <svg class="o-svg">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                    </svg>
                                </span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

{% endmacro %}
