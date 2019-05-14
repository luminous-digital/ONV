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
      menuToggle.addEventListener('click', e => {
        header.classList.toggle('is-active')
        body.classList.toggle('is-header-open')
      })
      if (parents) {
        Array.from(parents).forEach(item => {
          item.addEventListener('click', e => {
            item.classList.toggle('is-active')
          })
        })
      }
    }
  },
  desktopHeader: function () {
    const header = document.querySelector('.js-header')
    const searchToggle = document.querySelector('.js-toggle-search')
    const searchClose = document.querySelector('.js-close-search')
    const body = document.querySelector('body')
    if (header && searchToggle) {
      searchToggle.addEventListener('click', e => {
        body.classList.toggle('is-search-active')
      })
    }
    if (searchClose) {
      searchClose.addEventListener('click', e => {
        body.classList.remove('is-search-active')
      })
    }
  }
}

Header.init()
