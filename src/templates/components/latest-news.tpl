{% macro render(sectionTitle, isFirstSection) %}

<section class="l-section" {% if isFirstSection %}id="first-section"{% endif %}>
    <div class="c-section-divider">
        <div class="l-inner">
            <h4 class="c-section-divider__title t-sec-divider">
                Latest news
            </h4>
        </div>
    </div>
    <div class="c-latest-news-wrapper" style="background-image: url('./static/img/latest-news-bg.jpg');">
        <div class="l-inner">
            <div class="swiper-container c-latest-news-wrapper__slider js-slider-latest-news">
                <ul class="swiper-wrapper c-latest-news">
                    <li class="swiper-slide c-latest-news-card">
                        <div class="c-latest-news-card__container">
                            <p class="c-latest-news-card__date t-small t-white">
                                28 August 2018
                            </p>
                            <p class="c-latest-news-card__excerpt t-white">
                                OCI N.V. Reports Second Quarter and First Half 2018 Results
                            </p>
                            <a href="#" class="c-latest-news-card__cta t-link t-white">
                                <span class="c-label">
                                    Read more
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-latest-news-card">
                        <div class="c-latest-news-card__container">
                            <p class="c-latest-news-card__date t-small t-white">
                                28 August 2018
                            </p>
                            <p class="c-latest-news-card__excerpt t-white">
                                OCI N.V. Reports Second Quarter and First Half 2018 Results
                            </p>
                            <a href="#" class="c-latest-news-card__cta t-link t-white">
                                <span class="c-label">
                                    Read more
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="swiper-slide c-latest-news-card">
                        <div class="c-latest-news-card__container">
                            <p class="c-latest-news-card__date t-small t-white">
                                28 August 2018
                            </p>
                            <p class="c-latest-news-card__excerpt t-white">
                                OCI N.V. Reports Second Quarter and First Half 2018 Results
                            </p>
                            <a href="#" class="c-latest-news-card__cta t-link t-white">
                                <span class="c-label">
                                    Read more
                                </span>
                            </a>
                        </div>
                    </li>
                </ul>
                <div class="c-latest-news-wrapper__prev js-slider-latest-news-prev">
                </div>
                <div class="c-latest-news-wrapper__next js-slider-latest-news-next">
                </div>
            </div>
            <div class="c-btn-wrapper">
                <a href="/news.html" class="c-btn c-btn--primary c-btn--center t-btn t-white">
                    <span class="c-label">
                        All news
                    </span>
                </a>
            </div>
        </div>
    </div>
</section>

{% endmacro %}
