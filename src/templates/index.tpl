{% extends "base/base.tpl" %}
{% block title %}
Homepage
{% endblock %}
{% block content %}

<div class="l-section l-section--bg-alt l-section--gutter-xxl">
    <div class="l-inner">
        <h1 class="t-h1">
            h1
        </h1>
        <h2 class="t-h2">
            h2
        </h2>
        <h3 class="t-h3">
            h3
        </h3>
        <h4 class="t-h4">
            h4
        </h4>
        <h5 class="t-h5">
            h5
        </h5>
        <p class="t-body">
            Paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum placerat
            hendrerit. In pretium, nisi placerat feugiat tempus, ante ligula egestas sapien, eu malesuada velit dui
            non est. Phasellus vel erat elit. Sed tortor libero, dapibus eget facilisis vel, sodales a libero.
        </p>
        <p class="t-small">
            Paragraph small: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum placerat
            hendrerit. In pretium, nisi placerat feugiat tempus, ante ligula egestas sapien, eu malesuada velit dui
            non est. Phasellus vel erat elit. Sed tortor libero, dapibus eget facilisis vel, sodales a libero.
        </p>
        <p class="t-sec-divider">
            Section divider
        </p>
        <div class="a">
            <a class="t-link" href="#">
                <span class="c-label">
                    Text link
                </span>
            </a>
            <br>
            <a class="t-body-link" href="#">
                <span class="c-label">
                    Body text link
                </span>
            </a>
        </div>
        <p class="t-timeline-number">
            Timeline number
        </p>
        <p class="t-big-number">
            Big number
        </p>
        <p class="t-menu">
            Menu
        </p>
        <p class="t-menu-sub">
            Menu level 2
        </p>
    </div>
</div>

{% endblock %}