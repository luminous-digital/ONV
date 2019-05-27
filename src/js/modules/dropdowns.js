const Dropdowns = {
  init: function () {
    this.initDropdowns()
  },
  initDropdowns: function () {
    const dropdownTogglers = document.querySelectorAll('.js-dropdown-toggle')
    if (dropdownTogglers) {
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
