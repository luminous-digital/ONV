{% macro render(secTitle, compTitle, compDesc, btnText, btnUrl, secImg) %}

    <section class="l-section">
        <div class="c-section-divider">
            <div class="l-inner">
                <h4 class="c-section-divider__title t-sec-divider">
                    {{ secTitle | safe }}
                </h4>
            </div>
        </div>
        <div class="c-lead-teaser-wrapper" style="background-image: url('../static/img/{{ secImg | safe}}');">
            <div class="l-inner l-inner--90 l-inner--desktop-70">
                <div class="c-lead-teaser t-center">
                    <h2 class="c-lead-teaser__title t-h1">
                        {{ compTitle | safe }}
                    </h2>
                    <p class="c-lead-teaser__desc t-body t-body--big t-white">
                        {{ compDesc | safe }}
                    </p>
                    <div class="c-btn-wrapper c-btn-wrapper--small">
                        <a href="{% if btnUrl %}{{ btnUrl | safe }}{% else %}#{% endif %}" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                            <span class="c-label">
                                {{ btnText | safe }}
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

{% endmacro %}