{% extends "base/base.tpl" %}
{% block title %}
News single
{% endblock %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='News',
            pageSubtitle='Latest news as well as a full archive of press releases avaible from January 2013',
            bgPhoto='img-header-panel-6.jpg'
        )
    }}
{% endblock %}

{% block heading %}
    {% import "components/article-header.tpl" as heading with context %}
    {{ heading.render(
        articleTitle='OCI N.V. Announces Tender Offer to Purchase Common Units of OCI Partners LP for $11.00 Per Unit in Cash',
        articleDate='4 June 2018'
    ) }}
{% endblock %}

{% block file_list_1 %}
    {% import "components/file-list.tpl" as file_list with context %}
    {{
        file_list.render(
            listCount='1',
            showDownload=true
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
                        OCI N.V. (Euronext: OCI) (“OCI”) today announced that its affiliate, OCIP Holding II LLC, has commenced a tender offer to purchase all publicly held common units of OCI Partners LP (NYSE: OCIP) (“OCIP”) not currently owned by OCI N.V. for $11.00 per common unit in cash (the “Offer Price”). The offer represents a 10.0% premium over OCIP\’s closing price on 1 June 2018, a 16.4% premium over OCIP\’s 90 trading day volume-weighted average unit price, and a 5.3% premium over OCIP\’s two-year high unit price.
                        <br><br>
                        OCI currently owns approximately 88.25% of the issued and outstanding OCIP common units. The tender offer will expire on 2 July 2018, unless the offer is extended in accordance with its terms.
                        <br><br>
                        OCI believes that this transaction is attractive for minority investors of OCIP to address concerns over the low trading liquidity of the units and the attractiveness of Master Limited Partnerships (MLPs) as an asset class, particularly in light of the latest change in federal income tax law. For OCI N.V. shareholders, the proposed transaction allows for simplification of the group\’s corporate structure, including the elimination of public listing costs.
                        <br><br>
                        After the completion of the tender offer, OCI currently intends to purchase all of the outstanding common units not tendered pursuant to the tender offer (other than any common units already owned by OCI or its affiliates) pursuant to Section 15.1(a) of the First Amended and Restated Agreement of Limited Partnership of OCIP, as amended (the “Partnership Agreement”), at a price per common unit equal to the Offer Price, net to the holder in cash, without interest thereon and less any applicable tax withholding (the “Buyout”). However, OCI may change its intent and there can be no assurance that OCI will consummate the Buyout.
                        <br><br>
                        There can be no assurance that the tender offer or Buyout will be completed. The tender offer is conditioned upon, among other things, there being validly tendered in accordance with the terms of the tender offer and not properly withdrawn prior to the expiration date sufficient OCIP common units such that, following the closing of the tender offer, OCI and its affiliates own at least 78,297,832 OCIP common units, representing greater than 90% of the outstanding OCIP common units (the “Minimum Tender Condition”). OCI may waive the Minimum Tender Condition in its sole discretion.
                        <br><br>
                        The tender offer is not subject to a financing condition. OCI expects to pay the offer consideration from cash on hand and/or borrowings under OCI\’s credit facilities.
                        <br><br>
                        Tenders of units must be made prior to the expiration of the offer and tenders may be withdrawn at any time prior to the expiration of the offer or, if not previously accepted for payment, after 1 August 2018. Holders wishing to tender their units but who are unable to deliver them physically or by book-entry transfer prior to the expiration of the offer, or who are unable to make delivery of all required documents to the depositary prior to the expiration of the offer, may tender their units by complying with the guaranteed delivery procedures set forth in the offer to purchase.
                        <br><br>
                        The offer to purchase, letter of transmittal, notice of guaranteed delivery and related documents will be mailed to unitholders of record of OCIP and will also be made available for distribution to beneficial owners of OCIP common units.
                        <br><br>
                        The dealer manager for the offer is J.P. Morgan Securities LLC. The transfer agent and the depositary for the Offer is Computershare Trust Company, N.A. The information agent for the offer is Georgeson LLC. Unitholders who have questions about the terms of the offer should contact J.P. Morgan Securities LLC at (877) 371-5947 (toll free) or (212) 622-4401 (direct). Unitholders who wish to request additional copies of the offer to purchase and the letter of transmittal should contact the information agent at its address and telephone number set forth below.
                    </p>
                    <address>
                        Georgeson<br>
                        1290 Avenue of the Americas, 9th Floor<br>
                        New York, NY 10104<br>
                        Banks, Brokers and Shareholders<br>
                        Call Toll-Free <a href="tel:+8885663252">(888) 566-3252</a>
                    </address>
                    ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_2 %}
            {% import "components/text-component.tpl" as text_component_2 with context %}
            {{ text_component_2.render(
                firstParagraph='
                <h3>Important Information</h3>
                <p>
                    This press release is for informational purposes only and is neither an offer to purchase nor a solicitation of an offer to sell securities. The solicitation of tenders of OCIP common units will be made only pursuant to the offer to purchase and related materials that OCI will be mailing to holders of OCIP common units. The tender offer is not being made to unitholders in any jurisdiction in which the making or acceptance thereof would not be in compliance with the blue sky or other laws of such jurisdiction. In any jurisdiction in which the blue sky or other laws require the tender offer to be made by a licensed broker or dealer, the tender offer will be deemed to be made on behalf of OCI by the dealer manager, or one or more registered brokers or dealers that are licensed under the laws of such jurisdiction. Unitholders should read the offer to purchase and related materials carefully and in their entirety because they contain important information, including the various terms and conditions of the offer. Unitholders can obtain copies of the offer to purchase, letter of transmittal and related materials filed by OCI as part of the statement on Schedule TO with the U.S. Securities Exchange Commission (the “SEC”) on 4 June 2018 through the SEC’s website at www.sec.gov without charge. Unitholders may also obtain copies of the offer to purchase and related materials, when and as filed with the SEC, without charge from OCI or by written or oral request directed to Georgeson LLC, at (800) 509-0917.
                </p>
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
