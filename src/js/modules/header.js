const Header = {
  init: function () {
    const isTouch = 'ontouchstart' in document.documentElement
    if (isTouch) {
      this.mobileHeader()
    } else {
      this.desktopHeader()
    }
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
    const parents = header.querySelectorAll('.has-children')
    const body = document.querySelector('body')
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
    }
    if (header && searchClose) {
      searchClose.addEventListener('click', closeSearch)
    }
    if (parents) {
      const headerOverlay = document.querySelector('.js-header-overlay')
      const parentsArr = Array.from(parents)
      const toggleSubmenu = e => {
        const navItem = e.currentTarget
        navItem.classList.toggle('is-active')
        headerOverlay.classList.toggle('is-active')
      }
      headerOverlay.addEventListener('click', e => {
        headerOverlay.classList.toggle('is-active')
        parentsArr.forEach(item => {
          item.classList.remove('is-active')
        })
      })
      parentsArr.forEach(item => {
        item.addEventListener('click', toggleSubmenu)
        item.addEventListener('touchstart', toggleSubmenu)
      })
    }
  }
}

Header.init()
