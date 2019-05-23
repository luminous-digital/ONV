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
                    <a class="c-link" href="/">
                        <figure class="c-logo">
                            <img src="../static/img/logo.png" alt="OCI" class="c-img" />
                        </figure>
                    </a>
                </div>
                <div class="c-menu-toggle js-menu-toggle">
                    <span class="c-menu-toggle__line">
                    </span>
                </div>
                <div class="c-search-toggle js-toggle-search">
                    <span class="c-search-toggle__icon">
                        <img src="../static/img/search.svg" alt="Search" class="c-img" />
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
                            <a href="/operations.html" class="c-link t-menu">
                                <span class="c-label">
                                    Operations
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
                                        <img src="../static/img/search-orange.svg" alt="Search" class="c-img" />
                                    </button>
                                </form>
                                <span class="c-search-form-close js-close-search">
                                    <img src="../static/img/close-orange.svg" alt="Close search" class="c-img" />
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
{% endmacro %}