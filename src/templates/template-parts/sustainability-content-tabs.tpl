{% macro render() %}

    <ul class="c-content-tabs">
        <li class="c-content-tabs__tab {% if page_title == 'Health and Safety' %}is-active{% endif %}">
            <a href="/sustainability-health-and-safety.html" class="c-content-tabs__btn t-btn">
                <span class="c-label">
                    Health and Safety
                </span>
            </a>
        </li>
        <li class="c-content-tabs__tab {% if page_title == 'Environment' %}is-active{% endif %}">
            <a href="/sustainability-environment.html" class="c-content-tabs__btn t-btn">
                <span class="c-label">
                    Environment
                </span>
            </a>
        </li>
        <li class="c-content-tabs__tab {% if page_title == 'Our communities' %}is-active{% endif %}">
            <a href="/sustainability-our-communities.html" class="c-content-tabs__btn t-btn">
                <span class="c-label">
                    Our communities
                </span>
            </a>
        </li>
        <li class="c-content-tabs__tab {% if page_title == 'Our employees' %}is-active{% endif %}">
            <a href="/sustainability-our-employees.html" class="c-content-tabs__btn t-btn">
                <span class="c-label">
                    Our employees
                </span>
            </a>
        </li>
    </ul>

{% endmacro %}
