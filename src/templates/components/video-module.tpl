{% macro render() %}
<div class="c-video">
    <div class="c-video__content js-video-lazy-load" data-embed="https://www.youtube.com/embed/dQw4w9WgXcQ">
        <div class="c-video__button">
            <svg class="o-svg">
                <use xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:href="./static/symbol/svg/sprite.symbol.svg#play-button"></use>
            </svg>
        </div>
    </div>
</div>
{% endmacro %}
