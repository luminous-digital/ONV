{% macro render() %}
<div class="l-footer">
    <div class="l-inner">
        <div class="c-footer">
            <div class="c-footer__logo-wrapper">
                <a class="c-logo c-logo--alt" href="/">
                    <svg class="o-svg c-logo__decor">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#logo"></use>
                    </svg>
                </a>
            </div>
            <p class="c-footer__nav-item t-menu t-menu--small t-white">
                <a href="#" class="c-link">
                   <span class="c-label">
                       Legal Policy
                   </span>
                </a>
             </p>
            <p class="c-footer__nav-item t-menu t-menu--small t-white">
                <a href="#" class="c-link">
                   <span class="c-label">
                       Privacy Policy
                   </span>
                </a>
             </p>
            <div class="c-footer__social-wrapper">
                <a class="c-link" href="#">
                    <figure class="c-social-icon">
                        <svg class="o-svg c-social-icon__decor">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#linkedin"></use>
                        </svg>
                    </figure>
                </a>
            </div>
        </div>
    </div>
</div>
{% endmacro %}
