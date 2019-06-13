{% macro render() %}

    <div class="c-cookie-bar js-cookie-bar">
        <div class="c-cookie-bar__content">
            <p class="c-cookie-bar__text t-small">
                We use cookies to improve your experience on this site. Read our <a href="#" class="t-underline">policy here</a>
            </p>
            <div class="c-btn-group">
                <button class="c-btn c-btn--orange t-btn js-cookie-accept">
                    <span class="c-label">
                        Continue
                    </span>
                </button>
                <button class="c-btn c-btn--transparent t-btn js-cookie-decline">
                    <span class="c-label">
                        No thanks
                    </span>
                </button>
            </div>
        </div>
    </div>

{% endmacro %}
