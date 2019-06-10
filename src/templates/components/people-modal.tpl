{% macro render() %}

    <div class="c-people-modal-wrapper js-people-modal">
        <div class="c-people-modal-wrapper__container">
            <button class="c-people-modal-close js-people-modal-close">
                <svg class="o-svg">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#close"></use>
                </svg>
            </button>
            <div class="c-people-modal js-people-modal-content">
            </div>
        </div>
    </div>

{% endmacro %}
