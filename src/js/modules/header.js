const Header = {
  init: function () {
    this.mobileHeader()
    this.desktopHeader()
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
          item.addEventListener('touchstart', e => {
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
    const toggleSearch = e => {
      e.stopPropagation()
      body.classList.add('is-search-active')
    }
    const closeSearch = e => {
      e.stopPropagation()
      body.classList.remove('is-search-active')
    }
    if (header && searchToggle) {
      searchToggle.addEventListener('click', toggleSearch)
      searchClose.addEventListener('click', closeSearch)
    }
  }
}

Header.init()
