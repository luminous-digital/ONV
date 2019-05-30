{% macro render(secTitle) %}

<div class="c-text-component">
    <div class="c-text-component__column">
        <h2 class="c-text-component__title t-h2">
            {{ secTitle | safe }}
        </h2>
    </div>
    <div class="c-text-component__column">
        <ul class="c-table-list">
            <li class="c-table-list__item c-table-list__item--heading">
                <div class="c-list-block">
                    <div class="c-list-block__item">
                        <h3 class="t-h3">Goal</h3>
                    </div>
                    <div class="c-list-block__item">
                        <h3 class="t-h3">OCI contribution</h3>
                    </div>
                </div>
            </li>
            <li class="c-table-list__item">
                <div class="c-list-block">
                    <div class="c-list-block__item">
                        <ul class="c-image-group">
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-1.jpg" alt="" />
                                </figure>
                            </li>
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-2.jpg" alt="" />
                                </figure>
                            </li>
                        </ul>
                    </div>
                    <div class="c-list-block__item">
                        <div class="c-wysiwyg">
                            <p>
                                Our nitrogen fertilizers allow farmers to increase crop yields and improve food quality, resulting in improved food availability and improved diets.<br><br>
                                Community engagement with local charities provides food security at a local level, which helps improve income and access to education.
                            </p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="c-table-list__item">
                <div class="c-list-block">
                    <div class="c-list-block__item">
                        <ul class="c-image-group">
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-3.jpg" alt="" />
                                </figure>
                            </li>
                        </ul>
                    </div>
                    <div class="c-list-block__item">
                        <div class="c-wysiwyg">
                            <p>
                                Our industrial chemicals, namely methanol, biomethanol, and DEF, are sustainable clean fuel alternatives that can be used to significantly reduce GHG emissions versus conventional fuels.
                            </p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="c-table-list__item">
                <div class="c-list-block">
                    <div class="c-list-block__item">
                        <ul class="c-image-group">
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-4.jpg" alt="" />
                                </figure>
                            </li>
                        </ul>
                    </div>
                    <div class="c-list-block__item">
                        <div class="c-wysiwyg">
                            <p>
                                Distribution of economic growth ensures the financial wellbeing of employees and the communities in which we operate.<br><br>
                                Good workplace practices as described in our Code of Conduct and other policies promotes a safe and encouraging workplace, diversity, and equal opportunity.
                            </p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="c-table-list__item">
                <div class="c-list-block">
                    <div class="c-list-block__item">
                        <ul class="c-image-group">
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-5.jpg" alt="" />
                                </figure>
                            </li>
                        </ul>
                    </div>
                    <div class="c-list-block__item">
                        <div class="c-wysiwyg">
                            <p>
                                Nutrient stewardship promotes effective crop yields that improve farmers’ returns.<br><br>
                                We strictly maintain safe, environmentally responsible production sites that protect local environments and ensure safe communities.
                            </p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="c-table-list__item">
                <div class="c-list-block">
                    <div class="c-list-block__item">
                        <ul class="c-image-group">
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-6.jpg" alt="" />
                                </figure>
                            </li>
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-7.jpg" alt="" />
                                </figure>
                            </li>
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-8.jpg" alt="" />
                                </figure>
                            </li>
                            <li class="c-image-group__item">
                                <figure class="c-image-group__image">
                                    <img src="./static/img/goals/img-icon-9.jpg" alt="" />
                                </figure>
                            </li>
                        </ul>
                    </div>
                    <div class="c-list-block__item">
                        <div class="c-wysiwyg">
                            <p>
                                Our investment in maintaining state-of-the-art production facilities, coupled with our GHG targets allows us to minimize our emissions and consequently out impact on climate change.<br><br>
                                Our commitment to educating farmers on nutrient stewardship allows them to maximize yields at optimal fertilizer application. This in turn reduces soil nutrient loss, protects from deforestation, and minimizes runoff to groundwater.
                            </p>
                        </div>
                        <p class="t-body">

                        </p>
                        <p class="t-body">

                        </p>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>

{% endmacro %}
