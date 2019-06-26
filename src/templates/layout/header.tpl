{% macro render(_active_no, _menu_item) %}
    {% if _active_no == '' %}
        {% set logo_href='#' %}
    {% else %}
        {% set logo_href='index.html' %}
    {% endif %}
    <header class="l-header js-header">
        <div class="l-inner">
            <div class="c-header js-header">
                <div class="c-header__logo-wrapper">
                    <a class="c-logo" href="/">
                        <svg class="o-svg c-logo__decor">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#logo"></use>
                        </svg>
                    </a>
                </div>
                <div class="c-menu-toggle js-menu-toggle">
                    <span class="c-menu-toggle__line">
                    </span>
                </div>
                <div class="c-search-toggle js-toggle-search">
                    <span class="c-search-toggle__icon">
                        <svg class="o-svg">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#search"></use>
                        </svg>
                    </span>
                </div>
                <div class="c-header-nav">
                    <ul class="c-header-nav-menu">
                        <li class="c-header-nav-menu__item{% if menu_item == 'about' %} current-menu-item{% endif %}">
                            <a href="/about.html" class="c-link t-menu">
                                <span class="c-label">
                                    About
                                </span>
                            </a>
                        </li>
                        <li class="c-header-nav-menu__item has-children{% if menu_item == 'operations' %} current-menu-item{% endif %}">
                            <a href="/operations.html" class="c-link t-menu">
                                <span class="c-label">
                                    Operations
                                </span>
                            </a>
                            <ul class="c-sub-nav">
                                {% set operations_items =
                                    [
                                        'OCI Nitrogen',
                                        'OCI Beaumont',
                                        'Natgasoline LLC',
                                        'Sorfert Algérie',
                                        'Egyptian Fertilizers Company',
                                        'Egypt Basic Industries Corporation',
                                        'BioMCN'
                                    ]
                                %}
                                {% for item in operations_items %}
                                    <li class="c-sub-nav__item">
                                        <a href="/operations-subpage.html" class="c-link t-menu-sub">
                                            <span class="c-label">
                                                {{ item }}
                                            </span>
                                        </a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </li>
                        <li class="c-header-nav-menu__item has-children{% if menu_item == 'sustainability' %} current-menu-item{% endif %}">
                            <a href="/sustainability.html" class="c-link t-menu">
                                <span class="c-label">
                                    Sustainability
                                </span>
                            </a>
                            <ul class="c-sub-nav">
                                <li class="c-sub-nav__item">
                                    <a href="/sustainability-our-approach.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Our Approach
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/sustainability-our-communities.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Our Communities
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/sustainability-health-and-safety.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Health and safety
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/sustainability-environment.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Environment
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/sustainability-our-employees.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Our Employees
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/sustainability-our-stories.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Our stories
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="c-header-nav-menu__item has-children{% if menu_item == 'investors' %} current-menu-item{% endif %}">
                            <a href="/investors.html" class="c-link t-menu">
                                <span class="c-label">
                                    Investors
                                </span>
                            </a>
                            <ul class="c-sub-nav">
                                <li class="c-sub-nav__item">
                                    <a href="/investors-results-and-presentations.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Results and Presentations
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/investors-investor-relations-calendar.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                           Investor relations calendar
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/investors-listing-and-share-information.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Listing and share information
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/investors-board-profile.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Board Profile
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/investors-research-analysts.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Research analysts
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="c-header-nav-menu__item{% if menu_item == 'news' %} current-menu-item{% endif %}">
                            <a href="/news.html" class="c-link t-menu">
                                <span class="c-label">
                                    News
                                </span>
                            </a>
                        </li>
                        <li class="c-header-nav-menu__item{% if menu_item == 'contact' %} current-menu-item{% endif %}">
                            <a href="/contact.html" class="c-link t-menu">
                                <span class="c-label">
                                    Contact
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class="c-header-nav__search">
                        <div class="c-header-search js-search-container">
                            <div class="l-inner">
                                <form action="search" class="c-search-form t-body js-search-form">
                                    <input placeholder="Search now" id="search" name="search" class="c-search-form__input js-search-form-input">
                                    <button type="submit" class="c-search-form__submit">
                                        <svg class="o-svg">
                                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#search"></use>
                                        </svg>
                                    </button>
                                </form>
                                <span class="c-search-form-close js-close-search">
                                    <svg class="o-svg">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#close"></use>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="c-search-list js-search-wrapper">
                        <div class="l-inner">
                            <h2 class="c-search-list__title t-h2">
                                Your search "<span class="js-search-phrase"></span>"
                            </h2>
                            <p class="c-search-list__desc t-body">
                                Showing <span class="js-search-result-from"></span> to <span class="js-search-result-to"></span> of <span class="js-search-result-total"></span> results
                            </p>
                            <ul class="c-search-results js-search-results">
                            </ul>
                            <div class="c-search-list__cta">
                                <button class="t-link js-search-load-more">
                                    <span class="c-label">
                                        Show more
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="c-header-overlay js-header-overlay"></div>
                </div>
            </div>
        </div>
    </header>
{% endmacro %}