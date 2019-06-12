{% extends "base/base.tpl" %}
{% block title %}
Cookie policy
{% endblock %}
{% block content %}

{% block header_panel_short %}
    {% import "components/header-panel-short.tpl" as header_panel_short with context %}
    {{
        header_panel_short.render(
            pageTitle='Cookie policy',
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
                    <h3>1. Confidentiality</h3>
                    <p>
                        Any information, which is either held by OCI N.V. or which you provide to OCI N.V. will be regarded by OCI N.V. as personal information and, subject to the Terms and Conditions, be treated as confidential.
                    </p>
                    ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_2 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                clear=true,
                firstParagraph='
                    <h3>2. Use of Personal Information</h3>
                    <p>
                        OCI N.V. will only use your personal information in the ordinary course of its business and for the purposes of providing information as would have been requested through subscription to OCI material or email alerts.
                    </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_3 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                clear=true,
                firstParagraph='
                    <h3>3. Non-release of information to third parties</h3>
                    <p>
                        3.1 OCI N.V. will not sell, rent or provide your personal information to unauthorised entities or to third parties for their independent use without your consent. OCI N.V. may, however, share your personal information with its affiliates, business partners and subsidiaries in the ordinary course of its business. If OCI N.V. does pass your personal information on to its affiliates, business partners and/or subsidiaries, it will make them aware of the provisions of this privacy policy.
                        <br><br>
                        3.2 OCI N.V. will release your personal information to a party if it believes that it is required by law or by a court to do so, in compliance with laws and regulations. OCI N.V. will also disclose your personal information if it believes, in its sole discretion, that this is necessary to prevent or lessen any unlawful or harmful actions.
                        <br>
                    </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_4 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                clear=true,
                firstParagraph='
                    <h3>4. Updating Personal Information</h3>
                    <p>
                        If you would like to update or correct any of your personal information held by OCI N.V., kindly contact OCI N.V.’s Investor Relations department at investor.relations@oci.nl and we will endeavour to update and correct your personal information.
                        <br>
                    </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_5 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                clear=true,
                firstParagraph='
                    <h3>5. Non-Warranty</h3>
                    <p>
                        5.1 If you disclose any personal information to a third party, such as one of OCI N.V.\'s affiliates or an entity which operates a website linked to this website or anyone other than OCI N.V. you must be aware that OCI N.V. does not regulate or control how that third party uses your personal information. You should always ensure that you read the privacy policy of any third party, as their privacy policy will be applicable.
                        <br><br>
                        5.2 Where your personal information is accessed or used by a third party through the OCI N.V. Website, you will release OCI N.V. from any liability, financial or physical as a result of the use of such information. You will also release OCI N.V. from the obligation to pay you any benefits or profits gained by any third parties as a result of the use of your personal information obtained via OCI N.V.\' Web site.
                        <br>
                    </p>
                ',
                noPadding='true'
            ) }}
        {% endblock %}

        {% block text_component_6 %}
            {% import "components/text-component.tpl" as text_component with context %}
            {{ text_component.render(
                clear='true',
                firstParagraph='
                    <h3>6. Assent to Terms of Privacy Policy</h3>
                    <p>
                        By using the OCI N.V. website you acknowledge that you have read the terms of this privacy policy and that you agree to the use of User Data for the purposes set out above. Please note that OCI N.V. may amend this Privacy Policy at any time.
                        <br>
                    </p>
                '
            ) }}
        {% endblock %}

    </div>
</section>

{% endblock %}