{% macro render() %}

{% set accordions = [
    {
        accordionTitle: 'Accordion title 1',
        accordionContent: '
                        <h3>Bodytext subhead</h3>
                        <p>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                        </p>
                        <ul>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                        </ul>'
    },
    {
        accordionTitle: 'Accordion title 2',
        accordionContent: '
                        <h3>Bodytext subhead</h3>
                        <p>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                        </p>
                        <ul>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                        </ul>'
    },
    {
        accordionTitle: 'Accordion title 3',
        accordionContent: '
                        <h3>Bodytext subhead</h3>
                        <p>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                        </p>
                        <ul>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                        </ul>'
    },
    {
        accordionTitle: 'Accordion title 4',
        accordionContent: '
                        <h3>Bodytext subhead</h3>
                        <p>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                            Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            <br><br>
                        </p>
                        <ul>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                            <li>Our industrial chemicals, namely methanol, biomethanol, and DEF</li>
                        </ul>'
    }
] %}

<section class="l-section">
    <div class="l-inner">
        {% for accordion in accordions %}
            <div class="c-accordion js-accordion">
                <div class="c-accordion__header js-accordion-header">
                    <h5 class="t-h5 c-accordion__title">
                        {{ accordion.accordionTitle }}
                    </h5>
                </div>
                <div class="c-accordion__content js-accordion-content">
                    <div class="c-accordion__content-wrap">
                        <div class="c-accordion__text c-wysiwyg">
                            {{ accordion.accordionContent | safe }}
                        </div>
                        <ul class="c-accordion__list c-file-list">
                            {% for i in range(0, 3) -%}
                                <li class="c-file-list__item">
                                    <div class="c-file-list__item-wrapper">
                                        <p class="c-file-list__date t-body t-body--alt">
                                            25 June 2018
                                        </p>
                                        <h4 class="c-file-list__title t-h4 t-thin">
                                            Article Header - example goes in here
                                        </h4>
                                        <div class="c-btn-wrapper c-btn-wrapper--right">
                                            <a href="/news.html" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                                <span class="c-label t-btn t-blue">Download PDF</span>
                                                <span class="c-sub-label t-btn t-btn--small t-blue">2.5MB</span>
                                                <span class="c-btn__icon">
                                                    <svg class="o-svg">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                                    </svg>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</section>

{% endmacro %}
