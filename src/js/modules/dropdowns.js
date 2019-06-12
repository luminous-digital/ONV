const Dropdowns = {
  init: function () {
    this.initDropdowns()
    const windowWidth = window.innerWidth
    if (windowWidth < 1200) {
      this.initMobileDropdowns()
    }
  },
  initDropdowns: function () {
    const dropdownTogglers = document.querySelectorAll('.js-dropdown-toggle')
    if (dropdownTogglers.length) {
      // if (window.innerWidth < 768) {
      //   dropdownTogglers[0].parentNode.classList.add('is-open')
      // }
      Array.from(dropdownTogglers).forEach(toggler => {
        toggler.addEventListener('click', e => {
          const dropdown = e.currentTarget.parentNode
          dropdown.classList.toggle('is-open')
        })
      })
    }
  },
  initMobileDropdowns: function () {
    const dropdownTogglers = document.querySelectorAll('.js-dropdown-toggle-alt')
    if (dropdownTogglers.length) {
      Array.from(dropdownTogglers).forEach(toggler => {
        toggler.addEventListener('click', e => {
          const dropdown = e.currentTarget.parentNode
          dropdown.classList.toggle('is-open')
        })
      })
    }
  }
}

Dropdowns.init()
