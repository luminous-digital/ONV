{% macro render(_active_no, _menu_item) %}
    {% if _active_no == '' %}
        {% set logo_href='#' %}
    {% else %}
        {% set logo_href='index.html' %}
    {% endif %}
    <header class="l-header">
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
                        <li class="c-header-nav-menu__item {% if menu_item == 'about' %}current-menu-item{% endif %}">
                            <a href="/about.html" class="c-link t-menu">
                                <span class="c-label">
                                    About
                                </span>
                            </a>
                        </li>
                        <li class="c-header-nav-menu__item has-children {% if menu_item == 'operations' %}current-menu-item{% endif %}">
                            <a href="#" class="c-link t-menu">
                                <span class="c-label">
                                    Operations
                                </span>
                            </a>
                            <ul class="c-sub-nav">
                                <li class="c-sub-nav__item">
                                    <a href="/operations.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Nitrogen
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="/operations.html" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Beaumont
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="c-header-nav-menu__item has-children">
                            <a href="#" class="c-link t-menu">
                                <span class="c-label">
                                    Sustainability
                                </span>
                            </a>
                            <ul class="c-sub-nav">
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Nitrogen
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Beaumont
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Iowa Fertilizer Company
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Natgasoline LLC
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Sorfert Algerie
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Egyptian Fertilizers Company
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Egypt Basic Industries Corporation
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            BioMCN
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="c-header-nav-menu__item has-children">
                            <a href="#" class="c-link t-menu">
                                <span class="c-label">
                                    Investors
                                </span>
                            </a>
                            <ul class="c-sub-nav">
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Nitrogen
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Beaumont
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Iowa Fertilizer Company
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Natgasoline LLC
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Sorfert Algerie
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            OCI Nitrogen
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Egyptian Fertilizers Company
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            Egypt Basic Industries Corporation
                                        </span>
                                    </a>
                                </li>
                                <li class="c-sub-nav__item">
                                    <a href="#" class="c-link t-menu-sub">
                                        <span class="c-label">
                                            BioMCN
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="c-header-nav-menu__item">
                            <a href="#" class="c-link t-menu">
                                <span class="c-label">
                                    News
                                </span>
                            </a>
                        </li>
                        <li class="c-header-nav-menu__item">
                            <a href="#" class="c-link t-menu">
                                <span class="c-label">
                                    Contact
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class="c-header-nav__search">
                        <div class="c-header-search js-search-container">
                            <div class="l-inner">
                                <form method="POST" action="" class="c-search-form t-body">
                                    <input placeholder="Search now" id="search" name="search" class="c-search-form__input">
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
                    <div class="c-header-overlay js-header-overlay"></div>
                </div>
            </div>
        </div>
    </header>
{% endmacro %}