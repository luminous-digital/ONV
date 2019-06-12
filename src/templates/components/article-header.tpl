{% macro render(articleTitle, articleDate) %}

<section class="l-section l-section--no-offset">
    <div class="l-inner">
        <div class="c-article-header-wrapper">
            <div class="c-article-header-wrapper__title">
                <div class="c-article-header">
                    <h2 class="c-article-header__title t-h2">
                        {{ articleTitle }}
                    </h2>
                    <p class="c-article-header__date t-body t-body--alt-mobile t-dgrey">
                        {{ articleDate }}
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

{% endmacro %}
