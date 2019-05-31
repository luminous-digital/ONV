{% macro render() %}

    <div class="c-content-dropdown-tabs">

        <button class="c-content-dropdown-tabs__title t-small t-white t-bold js-dropdown-toggle-alt">
            <span class="c-label">
                {{ page_title }}
            </span>
        </button>

        <ul class="c-content-dropdown-tabs__options">
            <li class="c-content-dropdown-tabs__option {% if page_title == 'Health and Safety' %}is-active{% endif %}">
                <a href="/sustainability-health-and-safety.html" class="c-content-dropdown-tabs__btn t-btn">
                    <span class="c-label">
                        Health and Safety
                    </span>
                </a>
            </li>
            <li class="c-content-dropdown-tabs__option {% if page_title == 'Environment' %}is-active{% endif %}">
                <a href="/sustainability-environment.html" class="c-content-dropdown-tabs__btn t-btn">
                    <span class="c-label">
                        Environment
                    </span>
                </a>
            </li>
            <li class="c-content-dropdown-tabs__option {% if page_title == 'Our communities' %}is-active{% endif %}">
                <a href="/sustainability-our-communities.html" class="c-content-dropdown-tabs__btn t-btn">
                    <span class="c-label">
                        Our communities
                    </span>
                </a>
            </li>
            <li class="c-content-dropdown-tabs__option {% if page_title == 'Our employees' %}is-active{% endif %}">
                <a href="/sustainability-our-employees.html" class="c-content-dropdown-tabs__btn t-btn">
                    <span class="c-label">
                        Our employees
                    </span>
                </a>
            </li>
        </ul>

    </div>

{% endmacro %}
