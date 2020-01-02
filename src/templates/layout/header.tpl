{% macro render(_active_no, _menu_item) %}
{% if _active_no == '' %}
{% set logo_href='#' %}
{% else %}
{% set logo_href='index.html' %}
{% endif %}
<header class="l-header js-global-header">
    <div class="l-inner">
        <div class="c-header js-header">
            <div class="c-header__logo-wrapper">
                <a class="c-logo" href="/">
                    <svg class="o-svg c-logo__decor">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                            xlink:href="./static/symbol/svg/sprite.symbol.svg#logo"></use>
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
                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                            xlink:href="./static/symbol/svg/sprite.symbol.svg#search"></use>
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
                    <li
                        class="c-header-nav-menu__item has-children{% if menu_item == 'operations' %} current-menu-item{% endif %}">
                        <a href="/operations.html" class="c-link t-menu">
                            <span class="c-label">
                                Operations
                            </span>
                        </a>
                        <ul class="c-sub-nav">
                            <li class="c-sub-nav__item{% if sub_menu_item == 'OCI Nitrogen' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-nitrogen.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        OCI Nitrogen
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'OCI Beaumont' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-beaumont.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        OCI Beaumont
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Natgasoline LLC' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-natgasoline.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Natgasoline LLC
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Sorfert Algérie' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-sorfert.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Sorfert Algérie
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Egyptian Fertilizers Company' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-fertilizers.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Egyptian Fertilizers Company
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Egypt Basic Industries Corporation' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-industries.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Egypt Basic Industries Corporation
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'BioMCN' %} current-menu-item{% endif %}">
                                <a href="/operations-subpage-biomcn.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        BioMCN
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li
                        class="c-header-nav-menu__item has-children{% if menu_item == 'sustainability' %} current-menu-item{% endif %}">
                        <a href="/sustainability.html" class="c-link t-menu">
                            <span class="c-label">
                                Sustainability
                            </span>
                        </a>
                        <ul class="c-sub-nav">
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Our Approach' %} current-menu-item{% endif %}">
                                <a href="/sustainability-our-approach.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Our Approach
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Our Communities' %} current-menu-item{% endif %}">
                                <a href="/sustainability-our-communities.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Our Communities
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Health and safety' %} current-menu-item{% endif %}">
                                <a href="/sustainability-health-and-safety.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Health and safety
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Environment' %} current-menu-item{% endif %}">
                                <a href="/sustainability-environment.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Environment
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Our Employees' %} current-menu-item{% endif %}">
                                <a href="/sustainability-our-employees.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Our Employees
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Our stories' %} current-menu-item{% endif %}">
                                <a href="/sustainability-our-stories.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Our stories
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li
                        class="c-header-nav-menu__item has-children{% if menu_item == 'investors' %} current-menu-item{% endif %}">
                        <a href="/investors.html" class="c-link t-menu">
                            <span class="c-label">
                                Investors
                            </span>
                        </a>
                        <ul class="c-sub-nav">
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Results and Presentations' %} current-menu-item{% endif %}">
                                <a href="/investors-results-and-presentations.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Results and Presentations
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Investor relations calendar' %} current-menu-item{% endif %}">
                                <a href="/investors-investor-relations-calendar.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Investor relations calendar
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Listing and share information' %} current-menu-item{% endif %}">
                                <a href="/investors-listing-and-share-information.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Listing and share information
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Board Profile' %} current-menu-item{% endif %}">
                                <a href="/investors-board-profile.html" class="c-link t-menu-sub">
                                    <span class="c-label">
                                        Board Profile
                                    </span>
                                </a>
                            </li>
                            <li class="c-sub-nav__item{% if sub_menu_item == 'Research analysts' %} current-menu-item{% endif %}">
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
                                <input placeholder="Search now" id="search" name="search"
                                    class="c-search-form__input js-search-form-input">
                                <button type="submit" class="c-search-form__submit">
                                    <svg class="o-svg">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                            xlink:href="./static/symbol/svg/sprite.symbol.svg#search"></use>
                                    </svg>
                                </button>
                            </form>
                            <span class="c-search-form-close js-close-search">
                                <svg class="o-svg">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                        xlink:href="./static/symbol/svg/sprite.symbol.svg#close"></use>
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
                            Showing <span class="js-search-result-from"></span> to <span
                                class="js-search-result-to"></span> of <span class="js-search-result-total"></span>
                            results
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
