import $ from 'jquery'

const ListLoadMore = {
  init: function () {
    const $lists = $('.js-list')
    if ($lists) {
      $lists.each(function () {
        const $list = $(this)
        const $loadMoreBtn = $list.find('.js-list-load-more')
        const perPage = parseInt($list.attr('data-per-page'), 10)
        $loadMoreBtn.on('click', e => {
          const hiddenItems = $list.find('.c-file-list__item.is-hidden')
          let i
          for (i = 0; i < perPage; i++) {
            $(hiddenItems[i]).removeClass('is-hidden')
          }
          if (hiddenItems.length <= perPage) {
            $loadMoreBtn.hide()
          }
        })
      })
    }
  }
}

ListLoadMore.init()
