const Dropdowns = {
  init: function () {
    this.initDropdowns()
  },
  initDropdowns: function () {
    const dropdownTogglers = document.querySelectorAll('.js-dropdown-toggle')
    if (dropdownTogglers.length) {
      if (window.innerWidth < 768) {
        dropdownTogglers[0].parentNode.classList.add('is-open')
      }
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
