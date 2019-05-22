const Header = {
  init: function () {
    const windowWidth = window.innerWidth
    if (windowWidth >= 768) {
      this.desktopHeader()
    } else {
      this.mobileHeader()
    }
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
      Array.from(parents).forEach(item => {
        const itemPos = item.getBoundingClientRect()
        const itemPosX = itemPos.left
        const itemPosY = itemPos.height
        const subNav = item.querySelector('.c-sub-nav')
        const toggleSubmenu = e => {
          e.stopPropagation()
          subNav.classList.add('is-active')
        }
        const closeSubmenu = e => {
          subNav.classList.remove('is-active')
        }
        subNav.style.top = itemPosY
        subNav.style.left = itemPosX - 18
        item.addEventListener('mouseenter', toggleSubmenu)
        item.addEventListener('touchstart', toggleSubmenu)
        item.addEventListener('mouseleave', closeSubmenu)
      })
    }
  }
}

Header.init()
