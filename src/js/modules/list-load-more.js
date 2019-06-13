import $ from 'jquery'

const ListLoadMore = {
  init: function () {
    const $lists = $('.js-list')
    if ($lists) {
      $lists.each(function () {
        const $list = $(this)
        const $loadMoreBtn = $list.find('.js-list-load-more')
        const $elemList = $list.find('.js-list-items')
        const apiUrl = $list.attr('data-api-url')
        const perPage = parseInt($list.attr('data-api-per-page'), 10)
        $loadMoreBtn.on('click', e => {
          const offset = parseInt($list.attr('data-api-offset'), 10)
          $.ajax({
            method: 'GET',
            dataType: 'json',
            url: apiUrl,
            data: {
              perPage: perPage,
              offset: offset
            }
          })
            .done(res => {
              const items = res.map(item => {
                return `<li class="c-file-list__item">
                          <div class="c-file-list__item-wrapper">
                              <p class="c-file-list__date t-body t-body--alt">
                                ${item.date}
                              </p>
                              <h4 class="c-file-list__title t-h4 t-thin">
                                ${item.title}
                              </h4>
                              <div class="c-btn-wrapper c-btn-wrapper--right">
                                <a href="${item.url}" class="c-btn c-btn--download-icon c-btn--block c-btn--padded">
                                  <span class="c-label t-btn t-blue">Download ${item.fileType}</span>
                                  <span class="c-sub-label t-btn t-btn--small t-blue">${item.fileSize}MB</span>
                                  <span class="c-btn__icon">
                                    <svg class="o-svg">
                                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#icon-download"></use>
                                    </svg>
                                  </span>
                                </a>
                              </div>
                          </div>
                      </li>`
              })
              if (!res || res.length === 0) {
                $loadMoreBtn.hide()
              }
              $elemList.append(items)
              $list.attr('data-api-offset', offset + perPage)
            })
            .fail(err => {
              console.log('ajax failed: ', err)
            })
        })
      })
    }
  }
}

ListLoadMore.init()
