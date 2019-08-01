const Accordions = {
  init: function () {
    const accordions = document.querySelectorAll('.js-accordion')
    if (accordions) {
      Array.from(accordions).forEach(accordion => {
        const header = accordion.querySelector('.js-accordion-header')
        header.addEventListener('click', e => {
          if (e.currentTarget.parentNode.classList.contains('is-open')) {
            Array.from(accordions).forEach(accordion => {
              accordion.classList.remove('is-open')
            })
          } else {
            Array.from(accordions).forEach(accordion => {
              accordion.classList.remove('is-open')
            })
            e.currentTarget.parentNode.classList.add('is-open')
          }
        })
      })
    }
  }
}

Accordions.init()
