{% macro render() %}

<section class="l-section">
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                Quick links
            </h4>
        </div>
    </div>
    <div class="c-quick-links-wrapper">
        <div class="l-inner">
            <div class="swiper-container c-quick-links-wrapper__slider js-slider-quick-links">
                <ul class="swiper-wrapper c-quick-links">
                    <li class="swiper-slide c-quick-links-card">
                        <div class="c-quick-links-card__container">
                            <h5 class="c-quick-links-card__date t-h5">
                                About us
                            </h5>
                            <figure class="c-quick-links-card__decor js-object-fit">
                                <img src="./static/img/quick-links-fig.jpg">
                            </figure>
                            <p class="c-quick-links-card__excerpt t-body">
                                OCI is a leading global nitrogen fertilizer producer with over 9.6 million metric tons of capacity…
                            </p>
                            <a href="#" class="c-quick-links-card__cta t-link">
                                <span class="c-label">
                                    About us
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-quick-links-card">
                        <div class="c-quick-links-card__container">
                            <h5 class="c-quick-links-card__date t-h5">
                                Sustainability
                            </h5>
                            <figure class="c-quick-links-card__decor js-object-fit">
                                <img src="./static/img/quick-links-fig-01.jpg">
                            </figure>
                            <p class="c-quick-links-card__excerpt t-body">
                                Our position as an industry leader gives us the opportunity to encourage sustainable practices…
                            </p>
                            <a href="#" class="c-quick-links-card__cta t-link">
                                <span class="c-label">
                                    Sustainability
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-quick-links-card">
                        <div class="c-quick-links-card__container">
                            <h5 class="c-quick-links-card__date t-h5">
                                Investor proposition
                            </h5>
                            <figure class="c-quick-links-card__decor js-object-fit">
                                <img src="./static/img/quick-links-fig-02.jpg">
                            </figure>
                            <p class="c-quick-links-card__excerpt t-body">
                                A strong appetite for investment and diversification to grow our business and create outstanding returns to shareholders…
                            </p>
                            <a href="#" class="c-quick-links-card__cta t-link">
                                <span class="c-label">
                                    Investors
                                </span>
                            </a>
                        </div>
                    </li>
                </ul>
                <div class="c-quick-links-wrapper__prev js-slider-quick-links-prev">
                </div>
                <div class="c-quick-links-wrapper__next js-slider-quick-links-next">
                </div>
            </div>
        </div>
    </div>
</section>

{% endmacro %}
