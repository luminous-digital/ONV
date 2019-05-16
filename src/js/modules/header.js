const Header = {
  init: function () {
    const windowWidth = window.innerWidth
    if (windowWidth > 1024) {
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
    if (parents) {
      Array.from(parents).forEach(item => {
        const itemPos = item.getBoundingClientRect()
        const itemPosX = itemPos.x
        const itemPosY = itemPos.height
        const subNav = item.querySelector('.c-sub-nav')
        subNav.style.top = itemPosY
        subNav.style.left = itemPosX - 18
        item.addEventListener('mouseenter', e => {
          e.stopPropagation()
          subNav.classList.add('is-active')
        })
        item.addEventListener('mouseleave', e => {
          subNav.classList.remove('is-active')
        })
      })
    }
  }
}

Header.init()
