{% extends "base/base.tpl" %}
{% block title %}
About
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

{% block header_panel %}
    {% import "components/header-panel.tpl" as header_panel with context %}
    {{
        header_panel.render(
            pageTitle='About OCI',
            pageSubtitle='Based in the Netherlands, OCI NV comprises a collection of well-invested, strategically placed businesses, each of which benefits from the Group’s financial strength and global reach.',
            bgPhoto='img-header-panel-2.jpg'
        )
    }}
{% endblock %}

{% block standfirst %}
    {% import "components/standfirst.tpl" as standfirst with context %}
    {{ standfirst.render(
        paragraph='OCI produces nitrogen fertilizers, methanol and other natural gas based products, serving agricultural and industrial customers from the Americas to Asia. OCI is a leading global nitrogen fertilizer producer with over 9.6 million metric tons of capacity. OCI is also on track to become one of the world’s largest methanol producers with almost 3.7 million tons of capacity.<br><br>OCI N.V. employs approximately 3,000 people and is listed on the NYSE Euronext in Amsterdam under the symbol “OCI”.'
    ) }}
{% endblock %}

{% block our_history %}
    {% import "components/our-history.tpl" as our_history with context %}
    {{ our_history.render(
        paragraph='OCI produces nitrogen fertilizers, methanol and other natural gas based products, serving agricultural and industrial customers from the Americas to Asia. OCI is a leading global nitrogen fertilizer producer with over 9.6 million metric tons of capacity. OCI is also on track to become one of the world’s largest methanol producers with almost 3.7 million tons of capacity.<br><br>OCI N.V. employs approximately 3,000 people and is listed on the NYSE Euronext in Amsterdam under the symbol “OCI”.'
    ) }}
{% endblock %}

{% block text_component %}
    {% import "components/text-component.tpl" as text_component with context %}
    {{ text_component.render(
        secTitle='Our<br>values',
        firstParagraph='
        <p>
            We aspire to be a leading global producer and distributor of high quality nitrogen fertilizer products that provide essential nutrients to feed the world, and high quality industrial chemicals that provide clean, environmentally sound solutions to our customers. We aim to create a safe and encouraging workplace for our employees, and are committed to delivering exceptional value to our shareholders.
            <br><br>
            Our strategy focuses on four key areas
            <br>
        </p>
        <ul>
            <li>
                Promoting excellence in every aspect through our expertise, efficiency, attention to detail and passion.
            </li>
            <li>
                Creating exceptional value based on the depth of our financial resources, our local knowledge and our technical expertise.
            </li>
            <li>
                Ensuring our employees enjoy a safe and encouraging workplace through a strong focus on health and safety in every aspect of our operations.
            </li>
            <li>
                Investing in our people and operations to match global standards and maintaining a commitment to develop our host communities.
            </li>
        </ul>
        ',
        secondParagraph='
        <h3>Our core strengths</h3>
        <p>
            <strong>Our people</strong> – their expertise, hunger for knowledge and passion to excel. Above all, their loyalty and commitment to OCI.
            <br><br>
            <strong>Our resources</strong> – capital resources that enable us to respond faster than our competitors.
            <br><br>
            <strong>Our experience</strong> – a tradition of excellence and achievement.
            <br><br>
            <strong>Our entrepreneurial attitude</strong> – a strong appetite for investment and diversification to grow our business and create outstanding returns to shareholders.
        </p>
        ',
        btnText='Download our business model',
        btnSubtitle='PDF 0.5MB',
        btnType='download'
    ) }}
{% endblock %}

{% block feature_panel %}
    {% import "components/feature-panel.tpl" as feature_panel with context %}
    {{
        feature_panel.render(
            compTitle='Leadership & Governance',
            compContent='The composition of the Board of Directors (Board) strives to arm OCI N.V. with leadership that is diverse in skills, experience, and background.',
            compBtnTitle='Board profile',
            compBgSrc='feature-panel-decor-about.jpg'
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