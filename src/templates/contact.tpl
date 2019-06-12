{% extends "base/base.tpl" %}
{% block title %}
Contact
{% endblock %}
{% set menu_item = 'contact' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='Contact',
            pageSubtitle='Get in touch.',
            bgPhoto='img-header-panel-contact.jpg'
        )
    }}
{% endblock %}

{% block feature_panel %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{
        feature_panel.render(
            compTitle='Head<br>office',
            compContent='
            OCI
            <br>
            N.V. Honthorststraat 19
            <br>
            1071 DC Amsterdam
            <br>
            The Netherlands
            <br><br>
            Tel: (+31) 20 723 45 00',
            compBtnTitle='Our operations',
            compBgSrc='img-feature-panel-contact.jpg'
        )
    }}
{% endblock %}

{% block contacts %}
    {% import "components/contacts.tpl" as contacts with context %}
    {{
        contacts.render(
            secTitle='Sales contacts',
            firstTitle='For fertilizer and melamine product information and sales enquiries, please contact:',
            firstContent='fertilizersales@oci.nl',
            secondTitle='',
            secondContent=''
        )
    }}
{% endblock %}

{% block contacts_2 %}
    {% import "components/contacts.tpl" as contacts with context %}
    {{
        contacts.render(
            secTitle='IR CONTACT',
            firstTitle='For OCI N.V. investor relations or media<br>enquiries, please contact:',
            firstContent='<strong>Hans Zayed</strong><br>IR Director<br>E: hans.zayed@oci.nl<br>T: (+31) 06 18 25 13 67',
            isPaddedBottom=true
        )
    }}
{% endblock %}

{% endblock %}