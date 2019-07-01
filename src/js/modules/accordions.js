const Accordions = {
  init: function () {
    const accordions = document.querySelectorAll('.js-accordion')
    if (accordions) {
      Array.from(accordions).forEach(accordion => {
        const header = accordion.querySelector('.js-accordion-header')
        header.addEventListener('click', e => {
          accordion.classList.toggle('is-open')
        })
      })
    }
  }
}

Accordions.init()
