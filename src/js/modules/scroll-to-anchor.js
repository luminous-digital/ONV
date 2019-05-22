const ScrollToAnchor = {
  init: function () {
    this.scrollOnClick()
  },
  scrollOnClick: function () {
    const anchorLinks = document.querySelectorAll('.js-anchor-link')
    if (anchorLinks) {
      Array.from(anchorLinks).forEach(link => {
        const element = document.getElementById('first-section')
        if (element) {
          const elementPosY = element.getBoundingClientRect().top
          link.addEventListener('click', e => {
            e.preventDefault()
            e.stopPropagation()
            e.stopImmediatePropagation()
            setTimeout(window.scrollTo(0, elementPosY - 50), 1)
          })
        } else {
          console.log('First section not specified!')
        }
      })
    }
  }
}

document.addEventListener('DOMContentLoaded', function () {
  ScrollToAnchor.init()
})
