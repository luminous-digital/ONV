const ScrollToAnchor = {
  init: function () {
    this.scrollOnClick()
  },
  scrollOnClick: function () {
    const anchorLinks = document.querySelectorAll('.js-anchor-link')
    if (anchorLinks) {
      Array.from(anchorLinks).forEach(link => {
        const scrollElemID = link.dataset.scrollTo
        const element = document.getElementById(scrollElemID)
        const elementPosY = element.getBoundingClientRect().top
        link.addEventListener('click', e => {
          e.preventDefault()
          e.stopPropagation()
          e.stopImmediatePropagation()
          // console.log('a')
          // window.scrollTo({
          //   top: elementPosY - 30,
          //   behavior: 'smooth'
          // })
          setTimeout(window.scrollTo(0, elementPosY - 30), 1)
        })
      })
    }
  }
}

document.addEventListener('DOMContentLoaded', function () {
  ScrollToAnchor.init()
})
