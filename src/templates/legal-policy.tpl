{% extends "base/base.tpl" %}
{% block title %}
Legal policy
{% endblock %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Legal Notice',
            bgPhoto='img-header-panel-5.jpg'
        )
    }}
{% endblock %}

<section class="l-section l-section--no-offset">
    <div class="l-inner">

        {% block text_component_1 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                clear=true,
                firstParagraph='
                    <h3>OCI N.V. Website Legal Statement</h3>
                    <br>
                    <p>
                        This website is Issued and approved by OCI N.V. The copyright and the intellectual property rights in the OCI N.V. website are owned by or licensed to OCI N.V. Trademarks (registered or otherwise) used on the OCI N.V. website belong to OCI N.V. and its subsidiaries.
                        <br><br>
                        The information herein is derived from sources believed to be reliable, however no representation is made as to its completeness of accuracy nor has it been independently verified by OCI N.V. While reasonable care has been taken in preparing this document, no responsibility or liability is accepted for errors or omissions of fact or for any opinion expressed herein. This website is for information purposes only. It does not constitute an offer; recommendation or solicitation to any person to make or divest any investment in securities or other instruments related to OCI N.V. or enter into any trading transaction with OCI N.V. or any other party.
                        <br><br>
                        The information contained on this website and any report mentioned herein is provided solely for the information of clients of OCI N.V. who are expected to make their own investment decisions pertaining to OCI N.V. without reliance on this website. No information contained in the OCI N.V. website may be deemed to constitute an invitation to invest in OCI N.V. and/or a connected company.
                        <br><br>
                        OCI N.V. accepts no liability whatsoever for any direct or consequential loss arising from any use of the information contained herein or its contents. The information contained in this website may not be reproduced, distributed or published by any recipient for any purpose without prior express consent of OCI N.V. Past OCI N.V. performance is not necessarily a guide to future OCI N.V. performance. Investments can fluctuate in price and value and the investor may get back less than was originally invested. Changes in rates of exchange may have an adverse effect on the value of the investment.
                        <br><br>
                        The user of the OCI N.V. website may view, use, download and store the content of the OCI N.V. website for personal use only. The content of this website, including, but not limited to, the text, images, logos, audio and video, may not be published, distributed, modified, transmitted, reused, reposted or used for public, commercial or financial purposes without OCI N.V.; prior written permission. The user of the OCI N.V. website may not create a link, either directly or indirectly, to the OCI N.V. website without OCI N.V.\'s prior written permission.
                    </p>
                '
            ) }}
        {% endblock %}

    </div>
</section>

{% endblock %}
