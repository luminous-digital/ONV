import $ from 'jquery'

const Header = {
  init: function () {
    this.mobileHeader()
    this.desktopHeader()
    this.searchForm()
  },
  mobileHeader: function () {
    const header = document.querySelector('.js-header')
    const menuToggle = document.querySelector('.js-menu-toggle')
    if (header && menuToggle) {
      const parents = header.querySelectorAll('.has-children')
      const body = document.querySelector('body')
      menuToggle.addEventListener('touchstart', e => {
        header.classList.toggle('is-active')
        body.classList.toggle('is-header-open')
      })
      if (parents) {
        Array.from(parents).forEach(item => {
          item.addEventListener('click', e => {
            e.preventDefault()
            if (e.target.parentNode.classList.contains('t-menu') || e.target.parentNode.classList.contains('t-menu-sub')) {
              window.location.href = e.target.parentNode.href
            } else {
              item.classList.toggle('is-active')
            }
          })
        })
      }
    }
  },
  desktopHeader: function () {
    const header = document.querySelector('.js-header')
    const body = document.querySelector('body')
    const searchToggle = document.querySelector('.js-toggle-search')
    const searchClose = document.querySelector('.js-close-search')
    const $input = $('.js-search-form-input')
    const $resultList = $('.js-search-results')
    const $phraseElem = $('.js-search-phrase')
    const toggleSearch = e => {
      e.stopPropagation()
      body.classList.add('is-search-open')
    }
    const closeSearch = e => {
      e.stopPropagation()
      body.classList.remove('is-search-open')
      $('.js-search-wrapper').removeClass('is-active')
      $('body').removeClass('is-footer-fixed')
      $input.val('')
      $phraseElem.html('')
      $resultList.html('')
    }
    if (header && searchToggle) {
      searchToggle.addEventListener('click', toggleSearch)
      searchClose.addEventListener('click', closeSearch)
    }
  },
  searchForm: function () {
    const $searchContainer = $('.js-search-container')
    if ($searchContainer.length) {
      const $resultList = $('.js-search-results')
      const $searchForm = $('.js-search-form')
      $searchForm.on('submit', e => {
        e.preventDefault()
      })
      const $searchInput = $('.js-search-form-input')
      const $phraseElem = $('.js-search-phrase')
      const searchWhenTyping = () => {
        $resultList.html('')
        const query = $searchInput.val().trim()
        $('.js-search-wrapper').addClass('is-active')
        $('body').addClass('is-footer-fixed')
        $('body').addClass('is-search-open')
        $phraseElem.html(query)
        $.ajax({
          method: 'GET',
          dataType: 'json',
          url: 'https://jsonplaceholder.typicode.com/posts',
          data: {
            query: query
          }
        })
          .done(res => {
            const $closeSearchBtn = $('.js-close-search')
            const $loadMoreBtn = $('.js-search-load-more')
            const $total = $('.js-search-result-total')
            const $from = $('.js-search-result-from')
            const $to = $('.js-search-result-to')
            $total.html(res.length)
            $loadMoreBtn.show()
            let currentPage = 0
            const itemsPerPage = 5
            const total = res.length
            let from = 0
            let to = 5
            $from.html(1)
            $to.html(5)
            this.appendPosts(res.slice(from, to + 1))
            $loadMoreBtn.on('click', e => {
              currentPage++
              from = currentPage * itemsPerPage + 1
              to = currentPage * itemsPerPage + itemsPerPage
              this.appendPosts(res.slice(from, to + 1))
              $from.html(from)
              $to.html(to)
              if (currentPage * itemsPerPage >= total) {
                $loadMoreBtn.hide()
              }
            })
            $closeSearchBtn.on('click', e => {
              currentPage = 0
              from = 0
              to = 5
            })
          })
          .fail(err => {
            console.log('ajax failed: ', err)
          })
      }
      let timer = 0
      $searchInput.on('keyup', e => {
        if (timer) {
          clearTimeout(timer)
        }
        timer = setTimeout(searchWhenTyping, 1000)
      })
    }
  },
  appendPosts: function (posts) {
    const $listContainer = $('.js-search-results')
    const items = posts.map(post => {
      return `<li class="c-search-results__item">
          <h3 class="c-search-results__heading t-h3">
              ${post.title}
          </h3>
          <p class="c-search-results__content t-body">
            ${post.body}
          </p>
          <a href="${post.url}" class="c-search-results__url t-link">
              <span class="c-label">
                  View ${post.title}
              </span>
          </a>
      </li>`
    })
    $listContainer.append(items)
  }
}

Header.init()
