import $ from 'jquery'

const News = {
  init: function () {
    this.filters()
    this.loadMoreAjax()
  },
  activeFilters: [],
  filters: function () {
    const that = this
    const $filterList = $('.js-list-with-filters')
    if ($filterList.length) {
      const $filters = $filterList.find('.js-list-filter')
      const $activeFilterList = $filterList.find('.js-active-filter-list')
      $filters.each(function () {
        const $filter = $(this)
        $filter.on('click', '.c-dropdown__option', function () {
          const currentFilter = $(this).find('.c-label').html().trim()
          if (that.activeFilters.includes(currentFilter)) {
            removeFromFilters(currentFilter)
          } else {
            addToFilters(currentFilter)
          }
          filterListItems()
          bindRemoveAllBtn()
        })
      })
      $activeFilterList.on('click', '.js-list-filters-remove', function () {
        const currentFilter = $(this).parent().attr('data-filter-name')
        removeFromFilters(currentFilter)
      })
      const addToFilters = currentFilter => {
        const $listItem = $filterList.find(`[data-filter-to-enable="${currentFilter}"]`)
        $listItem.addClass('is-active')
        this.activeFilters.push(currentFilter)
        $activeFilterList.html($activeFilterList.html() + `<li class="c-list-active-filters__item" data-filter-name="${currentFilter}">
            <span class="c-label t-small t-bold">
                ${currentFilter}
            </span>
            <span class="c-close js-list-filters-remove">
                <svg class="o-svg">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="./static/symbol/svg/sprite.symbol.svg#close"></use>
                </svg>
            </span>
        </li>`)
      }
      const removeFromFilters = currentFilter => {
        const $listItem = $(`[data-filter-to-enable="${currentFilter}"]`)
        const $activeFilterItem = $(`[data-filter-name="${currentFilter}"]`)
        $listItem.removeClass('is-active')
        $activeFilterItem.remove()
        this.activeFilters.splice(this.activeFilters.indexOf(currentFilter), 1)
      }
      const bindRemoveAllBtn = () => {
        const $removeAllBtn = $('.js-list-filters-clear')
        $removeAllBtn.on('click', e => {
          const filters = this.activeFilters
          const $listItems = $('.js-list-items').find('li')
          $.each(filters, function () {
            const filter = this
            setTimeout(function () {
              removeFromFilters(filter)
              $(e.currentTarget).addClass('is-hidden')
              $listItems.each(function () {
                $(this).removeClass('is-hidden')
              })
            }, 300)
          })
        })
        if (this.activeFilters.length >= 1) {
          $removeAllBtn.removeClass('is-hidden')
        } else {
          $removeAllBtn.addClass('is-hidden')
        }
      }
      const filterListItems = () => {
        const $list = $('.js-list-items')
        const $listItems = $list.find('li')
        const activeFiltersString = this.activeFilters.join()
        $listItems.each(function () {
          activeFiltersString.length > 1 ? $(this).addClass('is-hidden') : $(this).removeClass('is-hidden')
        })
        $listItems.each(function () {
          const $item = $(this)
          const itemCat = $item.attr('data-filterby-cat')
          const itemYear = $item.attr('data-filterby-year')
          if (activeFiltersString.includes(itemCat) || activeFiltersString.includes(itemYear)) {
            $item.removeClass('is-hidden')
          }
        })
      }
    }
  },
  loadMoreAjax: function () {
    const $container = $('.js-list-with-filters')
    if ($container.length) {
      const $loadMoreBtn = $container.find('.js-list-load-more')
      const $listContainer = $container.find('.js-list-items')
      const perPage = parseInt($container.attr('data-per-page'), 10)
      $loadMoreBtn.on('click', e => {
        const hiddenItems = $listContainer.find('.js-list-item.is-hidden')
        let i
        for (i = 0; i < perPage; i++) {
          $(hiddenItems[i]).removeClass('is-hidden')
        }
        if (hiddenItems.length <= perPage) {
          $loadMoreBtn.hide()
        }
      })
    }
  }
}

$(document).ready(function () {
  News.init()
})
