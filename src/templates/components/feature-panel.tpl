{% macro render(compTitle, compContent, compBtnTitle, compBgSrc, isFirstSection) %}

<div class="l-section l-section--no-overflow" {% if isFirstSection %}id="first-section"{% endif %}>
    <div class="c-feature-panel-wrapper">
        <div class="c-feature-panel-decor">
            <img src="./static/img/{{ compBgSrc }}">
        </div>
        <div class="l-inner">
            <div class="c-feature-panel">
                <h2 class="c-feature-panel__title t-h2">
                    {{ compTitle }}
                </h2>
                <p class="c-feature-panel__content t-body">
                    {{ compContent }}
                </p>
                <div class="c-btn-wrapper c-btn-wrapper--left">
                    <a href="/our-operations.html" class="c-btn c-btn--medium c-btn--primary c-btn--center t-btn t-white">
                        <span class="c-label">
                            {{ compBtnTitle }}
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

{% endmacro %}
