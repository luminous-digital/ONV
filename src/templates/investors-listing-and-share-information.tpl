{% extends "base/base.tpl" %}
{% block title %}
Listing and share information
{% endblock %}
{% set menu_item = 'investors' %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Listing and share information',
            pageSubtitle='OCI N.V. is listed on Euronext in Amsterdamand began trading on 25 January, 2013. OCI N.V. is a constituent of the AMX-index, the index for mid-sized companies listed on Euronex Amsterdam',
            bgPhoto='img-header-panel-investors.jpg'
        )
    }}
{% endblock %}

{% block file_list_1 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            secTitle='Primary<br>listing',
            twoColumns=true,
            listCount='8'
        )
    }}
{% endblock %}

<section class="l-section l-section--no-offset">
    <div class="l-inner">

        {% block text_component_1 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                firstParagraph='
                <p>
                    For OCI N.V.\'s real-time share performance, please visit our Quotes page on the Euronext\'s European equities website.
                    <br><br>
                    <h3>OCI N.V. Share Options</h3>
                    On 13 December 2013, Euronext N.V., a wholly owned subsidiary of IntercontinentalExchange Group, Inc. (NYSE: ICE), introduced options on OCI N.V. shares. The options are available on the derivatives market of Euronext Amsterdam. The options trade under the symbol OCI and will expire on the third Friday of the contract month with initial maturities of 1, 2, 3 and 6 months. Each option represents 100 shares in OCI N.V. and will be cleared via LCH.Clearnet SA.
                    <br><br>
                    For OCI N.V. share options\' real-time share performance, please visit our Options Quotes page on the NYSE Euronext\'s European equities website.
                </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_2 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                secondParagraph='
                <p>
                    <h3>Demerger of the Engineering &amp; Construction Business</h3>
                    At an OCI N.V. extraordinary general meeting held on 12 November 2014, shareholders approved the proposal to facilitate the demerger of the company’s engineering and construction business from its fertilizer and chemicals business (the “Spin-Off”). The demerged engineering and construction business formed Orascom Construction Limited (“OC”). The Spin-Off was effected after the close of trading on 6 March 2015 (the “Record Date”) through a $ 1.4 billion repayment of capital in kind to OCI N.V. shareholders as registered on the Record Date in the form of OC shares. An OCI N.V. shareholder received one OC share for every two OCI N.V. shares held. OC shares commenced trading on 9 March 2015 on NASDAQ Dubai and on 11 March 2015 on the Egyptian Exchange.
                    <br><br>
                    After close of trading on the Record Date, Euronext announced a reference price of $ 13.33 per OC share and a EUR:USD exchange rate of 1.087 (https://www.euronext.com/en/products/equities/NL0010558797-XAMS), to calculate an adjustment of EUR 6.13 per OCI N.V. share. The $ 13.33 reference price is based on the $ 1.4 billion capital repayment divided by the number of OC shares available for transfer to the OCI N.V. shareholders. Based on a closing price of EUR 34.095, Euronext adjusted the OCI N.V. shares to EUR 27.965 as at 18:00 CET on 6 March 2015.
                </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_3 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                secTitle='Divided<br>plicy',
                firstParagraph='
                <p>
                    OCI has a flexible dividend policy designed to balance the availability of funds for dividend distribution with pursuing growth opportunities that generate attractive returns.
                </p>
                <div class="c-list-wrapper js-list">
                    <div class="c-list-wrapper__list">
                        <ul class="c-file-list js-list-items">
                            <li class="c-file-list__item">
                                <div class="c-file-list__item-wrapper">
                                    <p class="c-file-list__date t-body t-body--alt">
                                        4 June 2018
                                    </p>
                                    <h4 class="c-file-list__title t-h4 t-thin">
                                        Q3 2018 Quarterly Results
                                    </h4>
                                    <div class="c-btn-wrapper c-btn-wrapper--right">
                                        <a href="/news.html" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                            <span class="c-label t-btn t-blue">Download PDF</span>
                                            <span class="c-sub-label t-btn t-btn--small t-blue">2.5MB</span>
                                            <span class="c-btn__icon">
                                                <svg class="o-svg">
                                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                                </svg>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

    </div>
</section>

{% block hr %}
{% import "components/hr.tpl" as hr with context %}
{{
    hr.render(
        hasSpacing='true'
    )
}}
{% endblock %}

{% block quick_links %}
    {% import "components/quick-links.tpl" as quick_links with context %}
    {{
        quick_links.render(
            secTitle='Related links'
        )
    }}
{% endblock %}

{% endblock %}
